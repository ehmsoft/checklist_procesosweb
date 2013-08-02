# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :visita_diaria do
    juzgado nil
    estados false
    n_estados 1
    edictos false
    n_edictos 1
    traslados false
    n_traslados 1
    nada false
    ronda nil
    fecha "2013-05-29"
  end
end
