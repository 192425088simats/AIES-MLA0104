
import pandas as pd
from sklearn.tree import DecisionTreeClassifier, plot_tree
import matplotlib.pyplot as plt

data = {
    "Outlook":["Sunny","Sunny","Overcast","Rain","Rain","Rain","Overcast",
               "Sunny","Sunny","Rain","Sunny","Overcast","Overcast","Rain"],
    "Temperature":["Hot","Hot","Hot","Mild","Cool","Cool","Cool",
                   "Mild","Cool","Mild","Mild","Mild","Hot","Mild"],
    "Humidity":["High","High","High","High","Normal","Normal","Normal",
                "High","Normal","Normal","Normal","High","Normal","High"],
    "Wind":["Weak","Strong","Weak","Weak","Weak","Strong","Strong",
            "Weak","Weak","Weak","Strong","Strong","Weak","Strong"],
    "PlayTennis":["No","No","Yes","Yes","Yes","No","Yes",
                  "No","Yes","Yes","Yes","Yes","Yes","No"]
}

df = pd.DataFrame(data)

X = pd.get_dummies(df.drop("PlayTennis", axis=1))
y = df["PlayTennis"]

model = DecisionTreeClassifier(criterion="entropy", max_depth=3, random_state=0)
model.fit(X, y)

plt.figure(figsize=(14,7))
plot_tree(model, feature_names=X.columns, class_names=["No","Yes"],
          filled=True, rounded=True)
plt.show()
