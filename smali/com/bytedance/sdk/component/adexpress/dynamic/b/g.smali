###### Class com.bytedance.sdk.component.adexpress.dynamic.b.g (com.bytedance.sdk.component.adexpress.dynamic.b.g)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;
.super Ljava/lang/Object;
.source "DynamicLayoutNativeValue.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field private c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

.field private d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->a()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->a:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->e:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->g()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    goto :goto_2b

    :cond_25
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    :goto_2b
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->b()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    :cond_37
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const-string v0, "transparent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_27

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_27
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3a

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3a
    const-string v0, "rgba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    return v1

    :cond_43
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const-string v4, ")"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_91

    array-length v0, p0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_91

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aget-object v1, p0, v3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x3

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float p0, p0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr p0, v4

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    float-to-int v0, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    float-to-int v0, v3

    or-int/2addr p0, v0

    or-int/2addr p0, v2

    return p0

    :cond_91
    return v1
.end method

.method private ab()Z
    .registers 6

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->b()Z

    move-result v0

    const-string v1, "logoad"

    const-string v2, "logounion"

    const/4 v3, 0x1

    const-string v4, "logo-union"

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_31
    return v3

    :cond_32
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    const/4 v3, 0x0

    :cond_58
    :goto_58
    return v3
.end method

.method private ac()Z
    .registers 4

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->b:Ljava/lang/String;

    const-string v2, "adx:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1a
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/j;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    return v1
.end method

.method public static b(Ljava/lang/String;)[F
    .registers 9

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    if-eqz p0, :cond_44

    array-length v2, p0

    if-ne v2, v0, :cond_44

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aget-object v4, p0, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x2

    aget-object v6, p0, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/4 v7, 0x3

    aget-object p0, p0, v7

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-array v0, v0, [F

    aput v3, v0, v2

    aput v4, v0, v1

    aput v6, v0, v5

    aput p0, v0, v7

    return-object v0

    :cond_44
    new-array p0, v0, [F

    fill-array-data p0, :array_4a

    return-object p0

    :array_4a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public A()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->c()I

    move-result v0

    return v0
.end method

.method public B()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->b()I

    move-result v0

    return v0
.end method

.method public C()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->e()I

    move-result v0

    return v0
.end method

.method public D()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->d()I

    move-result v0

    return v0
.end method

.method public E()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->i()I

    move-result v0

    return v0
.end method

.method public F()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ag()Z

    move-result v0

    return v0
.end method

.method public I()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ai()I

    move-result v0

    return v0
.end method

.method public J()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ah()I

    move-result v0

    return v0
.end method

.method public K()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->g()I

    move-result v0

    return v0
.end method

.method public M()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ax()I

    move-result v0

    return v0
.end method

.method public N()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->aD()I

    move-result v0

    return v0
.end method

.method public O()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ar()I

    move-result v0

    return v0
.end method

.method public P()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->aq()I

    move-result v0

    return v0
.end method

.method public Q()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->as()Z

    move-result v0

    return v0
.end method

.method public R()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->at()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->aE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->m()Z

    move-result v0

    return v0
.end method

.method public V()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->D()Z

    move-result v0

    return v0
.end method

.method public W()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public X()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->E()I

    move-result v0

    return v0
.end method

.method public Y()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->F()I

    move-result v0

    return v0
.end method

.method public Z()D
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->G()D

    move-result-wide v0

    return-wide v0
.end method

.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->n()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public a(F)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->a(F)V

    return-void
.end method

.method public a(I)Z
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x1

    if-ne p1, v2, :cond_10

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->g()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    goto :goto_16

    :cond_10
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    :goto_16
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public aa()D
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->H()D

    move-result-wide v0

    return-wide v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->q()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->o()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->p()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public e()F
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->r()F

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->a:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->b:Ljava/lang/String;

    return-object v0

    :cond_7
    const-string v0, ""

    return-object v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0x11

    return v0

    :cond_11
    const-string v1, "center"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x4

    return v0

    :cond_1b
    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x3

    return v0

    :cond_25
    const/4 v0, 0x2

    return v0
.end method

.method public i()I
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->h()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    const/16 v0, 0x11

    return v0

    :cond_a
    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    const v0, 0x800005

    return v0

    :cond_11
    const v0, 0x800003

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    goto :goto_d

    :cond_a
    const-string v0, ""

    return-object v0

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->b:Ljava/lang/String;

    return-object v0

    :cond_8
    const-string v0, ""

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m()D
    .registers 6

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->a:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_17

    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->b()Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_12} :catch_17

    if-nez v0, :cond_16

    double-to-int v0, v3

    int-to-double v3, v0

    :cond_16
    return-wide v3

    :catch_17
    :cond_17
    return-wide v1
.end method

.method public n()D
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->s()D

    move-result-wide v0

    return-wide v0
.end method

.method public o()F
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->k()F

    move-result v0

    return v0
.end method

.method public p()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public q()F
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->l()F

    move-result v0

    return v0
.end method

.method public r()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ay()I

    move-result v0

    return v0
.end method

.method public s()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->aA()I

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->az()Z

    move-result v0

    return v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->N()Z

    move-result v0

    return v0
.end method

.method public w()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->O()I

    move-result v0

    return v0
.end method

.method public x()I
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->J()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip-with-time-skip-btn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip-with-countdowns-skip-btn"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto/16 :goto_f6

    :cond_32
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip-with-time-countdown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f5

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "skip-with-time"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    goto/16 :goto_f5

    :cond_51
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->a:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_67

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->K()Ljava/lang/String;

    move-result-object v1

    const-string v3, "click"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    const/4 v0, 0x5

    return v0

    :cond_67
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->ab()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->ac()Z

    move-result v1

    if-eqz v1, :cond_74

    return v2

    :cond_74
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->ab()Z

    move-result v1

    const/4 v3, 0x7

    if-eqz v1, :cond_7c

    return v3

    :cond_7c
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "feedback-dislike"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    const/4 v0, 0x3

    return v0

    :cond_8c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f5

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    goto :goto_f5

    :cond_9b
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->a()I

    move-result v1

    const-string v4, "normal"

    if-ne v1, v3, :cond_b4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_d6

    :cond_b4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    const/4 v0, 0x1

    return v0

    :cond_bc
    const-string v1, "creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_c6

    return v1

    :cond_c6
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->K()Ljava/lang/String;

    move-result-object v0

    const-string v3, "slide"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    return v1

    :cond_d5
    return v2

    :cond_d6
    :goto_d6
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->b()Z

    move-result v0

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->aC()Z

    move-result v0

    if-eqz v0, :cond_f3

    const/16 v0, 0xb

    return v0

    :cond_f3
    const/4 v0, 0x4

    return v0

    :cond_f5
    :goto_f5
    return v2

    :cond_f6
    :goto_f6
    const/4 v0, 0x6

    return v0
.end method

.method public y()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public z()D
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->h()D

    move-result-wide v0

    return-wide v0
.end method
