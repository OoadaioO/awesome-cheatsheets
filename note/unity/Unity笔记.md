# Unity笔记

**角度计算**

欧拉角：

描述三维空间物体姿态的方法。通过将旋转分解为三个连续的旋转轴，从而得到旋转角度的方式来表示旋转。不同的旋转顺序，会得到不同的结果。欧拉角是一种直观的表示方式，但是有一些限制，其中最大的限制是万向锁。可以通过四元数和举证表示旋转避免该问题。



四元数：

四元数（Quaternion）是一种数学概念，用于表示三维空间中的旋转。它可以看作是一个复数扩展到四维的版本，由一个实部和三个虚部组成。

在三维空间中，每次旋转都可以表示为绕某个轴旋转一定的角度，而四元数就是基于这个思想来表示旋转的。一个四元数可以写成 q = w + xi + yj + zk 的形式，其中 w 为实部，x、y 和 z 为虚部。

四元数在旋转中的作用类似于复数在二维旋转中的作用，它可以通过乘法来组合旋转。两个四元数的乘积等于它们对应的旋转的复合。因此，使用四元数表示旋转的好处是它们的乘法具有结合律，这可以使得在多次旋转中，每次旋转的顺序不会影响最终的结果。

四元数还有其他一些重要的性质，例如单位四元数的模长为 1，因此可以用来表示旋转的方向。此外，四元数还可以用来插值旋转，例如在两个旋转之间进行平滑的插值。

在计算机图形学和游戏开发中，四元数被广泛应用于实时计算和动画处理中，因为它们比欧拉角等其他表示方法更加高效和准确。



向量夹角计算

```c#
Vector3 vec1 = new Vector3(1, 2, 3);
Vector3 vec2 = new Vector3(-2, 1, 4);
float angle = Vector3.Angle(vec1, vec2);
```

沿着固定轴向旋转

```c#
// 沿着某个轴向旋转指定角度
Quaternion rotation = Quaternion.AngleAxis(angle, axis)
```

在旋转基础上继续旋转

```c#
Quaternion q1 = Quaternion.AngleAxis(angle,axis);
Quaternion q2 = Quaternion.AngleAxis(angle,axis);
// 将q2表示的旋转，应用与q1表示的旋转后，得到新的旋转q3
Quaternion q3 = q1 * q2
```

**获取碰撞信息**

```c#
private void OnCollisionEnter2D(Collision2D other) {
    // other 表示碰撞的另一个对象
    // contact是碰撞信息
    // normal是碰撞表面的法线向量，指向碰撞表面外侧
    ContactPoint2D contact = other.contacts[0];
    Vector2 normal = contact.normal;
}
```
