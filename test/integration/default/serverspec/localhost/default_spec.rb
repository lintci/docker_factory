require 'serverspec'

set :backend, :exec

describe command('packer -v') do
  its(:stdout){is_expected.to include('Packer v0.7.1')}
end

describe command('docker -v') do
  its(:stdout){is_expected.to include('Docker version 1.2.0, build fa7b24f')}
end
