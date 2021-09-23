package cfg

import (
	_ "embed"

	"gopkg.in/yaml.v2"
)

//go:embed execctx.yaml
var cfg []byte

type Config struct {
	Env      string `yaml:"env"`
	KafkaURL string `yaml:"kafkaUrl"`
}

func ReadConfig() Config {
	var cc Config
	if err := yaml.Unmarshal(cfg, &cc); err != nil {
		panic(err)
	}
	return cc
}
