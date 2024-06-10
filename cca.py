import pandas as pd
import numpy as np
from sklearn.cross_decomposition import CCA
import matplotlib.pyplot as plt
import seaborn as sns

# Set the random seed for reproducibility
np.random.seed(0)

# Generate X and Y with 10 dimensions each
X = np.random.randn(100, 10)
Y = X + np.random.randn(100, 10)


# Create an instance of the CCA class with two components
cca = CCA(n_components=2)

# Fit the CCA model to X and Y
cca.fit(X, Y)

# Transform X and Y to canonical variables
X_c, Y_c = cca.transform(X, Y)

# Score the CCA model
score = cca.score(X, Y)

# Print the score
print(score)

# Plot the first pair of canonical variables
plt.scatter(X_c[:, 0], Y_c[:, 0])
plt.xlabel('X_c1')
plt.ylabel('Y_c1')
plt.title('First pair of canonical variables')
plt.show()

# Plot the second pair of canonical variables
plt.scatter(X_c[:, 1], Y_c[:, 1])
plt.xlabel('X_c2')
plt.ylabel('Y_c2')
plt.title('Second pair of canonical variables')
plt.show()


# Load the data from the URL
data = pd.read_csv('https://archive.ics.uci.edu/ml/machine-learning-databases/parkinsons/telemonitoring/parkinsons_updrs.data')

# Split the data into X and Y
X = data.iloc[:, 6:28]
Y = data.iloc[:, 4:6]

# Create an instance of the CCA class with two components
cca = CCA(n_components=2)

# Fit the CCA model to X and Y
cca.fit(X, Y)

# Transform X and Y to canonical variables
X_c, Y_c = cca.transform(X, Y)

# Score the CCA model
score = cca.score(X, Y)

# Print the score
print(score)


# Plot the first pair of canonical variables
plt.scatter(X_c[:, 0], Y_c[:, 0])
plt.xlabel('X_c1')
plt.ylabel('Y_c1')
plt.title('First pair of canonical variables')
plt.show()

# Plot the second pair of canonical variables
plt.scatter(X_c[:, 1], Y_c[:, 1])
plt.xlabel('X_c2')
plt.ylabel('Y_c2')
plt.title('Second pair of canonical variables')
plt.show()


# Calculate the correlation matrix between canonical variables
correlation_matrix = np.corrcoef(X_c.T, Y_c.T)


# Plot the correlation matrix as a heatmap
plt.figure(figsize=(6,4))
sns.heatmap(correlation_matrix, annot=True, cmap='Set2', xticklabels=[
			'X_c1', 'X_c2'], yticklabels=['Y_c1', 'Y_c2'])
plt.title('Canonical Variables Correlation Matrix')
plt.show()


## Start State (green board)
![snapshot1](snapshots/snapshot1.png)