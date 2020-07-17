with(grass_bundle_object)
{
var bucket;
bucket = instance_nearest(x,y,grass_holder);
if distance_to_object(bucket) < 100
{
bucket.holding[bucket.number] = id;
bucket.number += 1;
}
}

