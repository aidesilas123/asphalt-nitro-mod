###### Class com.google.android.material.color.b.c (com.google.android.material.color.b$c)
.class Lcom/google/android/material/color/b$c;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/color/b$e;

.field private final b:Lcom/google/android/material/color/b$d;

.field private final c:Lcom/google/android/material/color/b$h;

.field private final d:Lcom/google/android/material/color/b$h;

.field private final e:Lcom/google/android/material/color/b$k;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/b$d;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/color/b$d;",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/b$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/b$c;->b:Lcom/google/android/material/color/b$d;

    new-instance p1, Lcom/google/android/material/color/b$h;

    const-string v0, "?1"

    const-string v1, "?2"

    const-string v2, "?3"

    const-string v3, "?4"

    const-string v4, "?5"

    const-string v5, "color"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/google/android/material/color/b$h;-><init>(Z[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/material/color/b$c;->c:Lcom/google/android/material/color/b$h;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    :goto_23
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_38

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/b$b;

    invoke-static {v0}, Lcom/google/android/material/color/b$b;->b(Lcom/google/android/material/color/b$b;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_38
    new-instance v0, Lcom/google/android/material/color/b$h;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/color/b$h;-><init>(Z[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/b$c;->d:Lcom/google/android/material/color/b$h;

    new-instance p1, Lcom/google/android/material/color/b$k;

    invoke-direct {p1, p2}, Lcom/google/android/material/color/b$k;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/google/android/material/color/b$c;->e:Lcom/google/android/material/color/b$k;

    new-instance p1, Lcom/google/android/material/color/b$e;

    const/16 p2, 0x200

    const/16 v0, 0x120

    invoke-virtual {p0}, Lcom/google/android/material/color/b$c;->a()I

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/material/color/b$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/b$c;->a:Lcom/google/android/material/color/b$e;

    return-void
.end method


# virtual methods
.method a()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->c:Lcom/google/android/material/color/b$h;

    invoke-virtual {v0}, Lcom/google/android/material/color/b$h;->a()I

    move-result v0

    add-int/lit16 v0, v0, 0x120

    iget-object v1, p0, Lcom/google/android/material/color/b$c;->d:Lcom/google/android/material/color/b$h;

    invoke-virtual {v1}, Lcom/google/android/material/color/b$h;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/color/b$c;->e:Lcom/google/android/material/color/b$k;

    invoke-virtual {v1}, Lcom/google/android/material/color/b$k;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method b(Ljava/io/ByteArrayOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->a:Lcom/google/android/material/color/b$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$e;->a(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->b:Lcom/google/android/material/color/b$d;

    invoke-static {v0}, Lcom/google/android/material/color/b$d;->a(Lcom/google/android/material/color/b$d;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->b:Lcom/google/android/material/color/b$d;

    invoke-static {v0}, Lcom/google/android/material/color/b$d;->b(Lcom/google/android/material/color/b$d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    const/16 v3, 0x80

    if-ge v2, v3, :cond_39

    array-length v3, v0

    if-ge v2, v3, :cond_2f

    aget-char v3, v0, v2

    invoke-static {v3}, Lcom/google/android/material/color/b;->a(C)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_36

    :cond_2f
    invoke-static {v1}, Lcom/google/android/material/color/b;->a(C)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_39
    const/16 v0, 0x120

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/google/android/material/color/b$c;->c:Lcom/google/android/material/color/b$h;

    invoke-virtual {v2}, Lcom/google/android/material/color/b$h;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->c:Lcom/google/android/material/color/b$h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$h;->c(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->d:Lcom/google/android/material/color/b$h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$h;->c(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->e:Lcom/google/android/material/color/b$k;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$k;->c(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
