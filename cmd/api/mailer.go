package main

// go get github.com/vanng822/go-preailer/premailer
// go get github.com/xhit/go-simple-email/v2

type Mail struct {
	Doamin      string
	Host        string
	Port        int
	Username    string
	Password    string
	Encryption  string
	FromAddress string
	FromName    string
}

type Message struct {
	From        string
	FromName    string
	To          string
	Subject     string
	Attachments []string
	Data        any
	DataMap     map[string]any
}

// func (m *Mail) SendSMTPMessage(msg Message) error {

// }
