extends Node

var alo
var nem

var money_label
var money = 0

enum items {
	tophat
}

var items_owned = {
	"tophat" = false
}

func sec_per_money(sec, amt):
	await get_tree().create_timer(sec).timeout
	money += amt
	money_label.text = "Money:" + str(money)
	sec_per_money(sec, amt)

func buy_item(item):
	if item == items.tophat:
		if money >= 15:
			if items_owned.tophat != true:
				add_item(items.tophat)
			else:
				alo.show()
		else:
			nem.show()

func add_item(item):
	if item == items.tophat:
		money -= 15
		money_label.text = "Money:" + str(money)
		items_owned.tophat = true
