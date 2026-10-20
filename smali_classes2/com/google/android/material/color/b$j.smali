###### Class com.google.android.material.color.b.j (com.google.android.material.color.b$j)
.class Lcom/google/android/material/color/b$j;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/color/b$e;

.field private final b:I

.field private final c:[B

.field private final d:[I

.field private final e:[Lcom/google/android/material/color/b$f;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Set;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/b$b;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/material/color/b$j;->c:[B

    iput p3, p0, Lcom/google/android/material/color/b$j;->b:I

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/color/b$f;

    iput-object v0, p0, Lcom/google/android/material/color/b$j;->e:[Lcom/google/android/material/color/b$f;

    const/4 v0, 0x0

    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/b$b;

    iget-object v3, p0, Lcom/google/android/material/color/b$j;->e:[Lcom/google/android/material/color/b$f;

    new-instance v4, Lcom/google/android/material/color/b$f;

    invoke-static {v1}, Lcom/google/android/material/color/b$b;->c(Lcom/google/android/material/color/b$b;)I

    move-result v1

    invoke-direct {v4, v0, v1}, Lcom/google/android/material/color/b$f;-><init>(II)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_33
    new-array p1, p3, [I

    iput-object p1, p0, Lcom/google/android/material/color/b$j;->d:[I

    const/4 p1, 0x0

    :goto_38
    if-ge v2, p3, :cond_54

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/material/color/b$j;->d:[I

    aput p1, v0, v2

    add-int/lit8 p1, p1, 0x10

    goto :goto_50

    :cond_4b
    iget-object v0, p0, Lcom/google/android/material/color/b$j;->d:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    :goto_50
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_38

    :cond_54
    new-instance p1, Lcom/google/android/material/color/b$e;

    const/16 p2, 0x201

    const/16 p3, 0x54

    invoke-virtual {p0}, Lcom/google/android/material/color/b$j;->a()I

    move-result v0

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/material/color/b$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/b$j;->a:Lcom/google/android/material/color/b$e;

    return-void
.end method

.method private b()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/color/b$j;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x54

    return v0
.end method

.method private c()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/color/b$j;->d:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method a()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/material/color/b$j;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/color/b$j;->e:[Lcom/google/android/material/color/b$f;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method d(Ljava/io/ByteArrayOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/b$j;->a:Lcom/google/android/material/color/b$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$e;->a(Ljava/io/ByteArrayOutputStream;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {}, Lcom/google/android/material/color/b;->b()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$j;->b:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-direct {p0}, Lcom/google/android/material/color/b$j;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$j;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$j;->d:[I

    array-length v1, v0

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v1, :cond_46

    aget v4, v0, v3

    invoke-static {v4}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_46
    iget-object v0, p0, Lcom/google/android/material/color/b$j;->e:[Lcom/google/android/material/color/b$f;

    array-length v1, v0

    :goto_49
    if-ge v2, v1, :cond_53

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/color/b$f;->a(Ljava/io/ByteArrayOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_53
    return-void
.end method
