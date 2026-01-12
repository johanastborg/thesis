import tensorflow as tf

def init_tpu():
    """Initializes the TPU strategy."""
    try:
        resolver = tf.distribute.cluster_resolver.TPUClusterResolver()
        tf.config.experimental_connect_to_cluster(resolver)
        tf.tpu.experimental.initialize_tpu_system(resolver)
        strategy = tf.distribute.TPUStrategy(resolver)
        print("All devices: ", tf.config.list_logical_devices('TPU'))
        return strategy
    except ValueError:
        print("TPU not found. Using default strategy.")
        return tf.distribute.get_strategy()
