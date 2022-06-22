module Helpers
    def get_fixture(item)
      YAML.load(File.read(Dir.pwd + "/spec/fixtures/#{item}.yml"), symbolize_names: true)
    end
  
    def get_thumb(file_name)
      return File.open(File.join(Dir.pwd, "spec/fixtures/images", file_name), "rb") # o argumento rb faz com que alem de encontrar o arquivo, ele o grave no formato binario
    end
  
    module_function :get_fixture
    module_function :get_thumb
  end
  