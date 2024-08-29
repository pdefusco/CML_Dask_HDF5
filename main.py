from multiprocessing import freeze_support
from dask.distributed import LocalCluster
import dask.dataframe as dd


def read_hdf():
    cluster = LocalCluster()          # Fully-featured local Dask cluster
    client = cluster.get_client()
    d = dd.read_hdf("build/data/DOSS_20240722T205526_000000Z.h5","*")
    print(d)


if __name__ == '__main__':
    freeze_support()
    read_hdf()

