import numpy

def kmeans(dataSet,k):
    numFeatures = dataSet.getNumFeatures()
    centroids = getRandomCentroids(numFeatures,k)

    iterations = 0
    oldCentroids = None

    while not shouldStop(oldCentroids,centroids,iterations):
        oldCentroids = centroids
        iterations += 1
        labels = getLabels(dataSet,centroids)
        centroids = getCentroids(dataSet,labels,k)

    return centroids


def shouldStop(oldCentroids,centroids,iterations):
    if iterations > MAX_ITERATIONS: return True
    return oldCentroids == centroids

def getLabels(dataSet,centroids):
    
    pass

def getCentroids(dataSet,labels,k):
    pass


####### seperate kmeans implementation


def cluster_points(X, mu):
    clusters = {}
    for x in X:
        bestmukey = min([(i[0],np.linalg.norm(x-mu[i[0]])) for i in enumerate(mu)], key=lambda t:t[1])[0]

        try:
            clusters[bestmukey].append(x)
        except KeyError:
            clusters[bestmukey] = [x]
    return clusters

def reevaluate_centers(mu,clusters):
    newmu = []
    keys = sorted(clusters.keys())
    for k in keys:
        newmu.append(np.mean(clusters[k], axis = 0))
    return newmu

def has_converged( mu,oldmu):
    return (set([tuple(a) for a in mu]) == set([tuple(a) for a in oldmu]))
def find_centers(X,K):
    oldmu = random.sample(X,K)
    mu = random.sample(X,K)
    while not has_converged(mu,oldmu)
        oldmu = mu
        clusters = cluster_points(X,mu)
        mu = reevaluate_centers(oldmu,clusters)
    return(mu,clusters)



