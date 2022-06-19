module Helpers
    def get_fixture(item)
        YAML.load(File.read(Dir.pwd + "/spec/fixtures/#{item}.yml"), symbolize_names: true)
    end

    module_function :get_fixture
end

#Obtem a massa de teste da pasta fixtures