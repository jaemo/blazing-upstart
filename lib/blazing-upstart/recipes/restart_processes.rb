require "blazing/recipe"
require "yaml"

class Blazing::Recipe::RestartProcesses < Blazing::Recipe

  def run(target_options = {})
    super target_options

    info "restarting processes"
    if complex_restart?
      processes.each do |process|
        system "#{sudo} service restart #{application}-#{process}"
      end
    else
      system "#{sudo} service restart #{application}"
    end
  end

  private

  def application
    options[:app] || pwd
  end

  def procfile
    options[:procfile] || "Procfile"
  end

  def sudo
    options[:sudo] || "sudo"
  end

  def complex_restart?
    !options[:reload].nil?
  end

  def restart_command(process)
    Array(options[:reload]).include?(process) ? "reload" : "restart"
  end

  def pwd
    Dir.pwd.split('/').last
  end

  def processes
    YAML.load_file(procfile).keys
  end

end
