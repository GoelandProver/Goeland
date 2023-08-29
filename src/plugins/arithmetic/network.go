package arithmetic

type Network []ComparisonForm

func (n *Network) ToString() string {
	str := ""

	for _, element := range *n {
		str += element.ToString() + "\n"
	}

	return str
}