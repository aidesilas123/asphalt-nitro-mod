###### Class com.ironsource.c9.b (com.ironsource.c9$b)
.class Lcom/ironsource/c9$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/c9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:[I

.field private c:J

.field private d:[B

.field final synthetic e:Lcom/ironsource/c9;


# direct methods
.method private constructor <init>(Lcom/ironsource/c9;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/c9$b;->e:Lcom/ironsource/c9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ironsource/c9$b;->a:Z

    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ironsource/c9$b;->b:[I

    const/16 p1, 0x40

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ironsource/c9$b;->d:[B

    invoke-direct {p0}, Lcom/ironsource/c9$b;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/c9;Lcom/ironsource/c9$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ironsource/c9$b;-><init>(Lcom/ironsource/c9;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/c9$b;J)J
    .registers 5

    iget-wide v0, p0, Lcom/ironsource/c9$b;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/ironsource/c9$b;->c:J

    return-wide v0
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/c9$b;->b:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ironsource/c9$b;->c:J

    return-void
.end method

.method static synthetic c(Lcom/ironsource/c9$b;Lcom/ironsource/c9$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/c9$b;->j(Lcom/ironsource/c9$b;)V

    return-void
.end method

.method static synthetic d(Lcom/ironsource/c9$b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/c9$b;->a:Z

    return p0
.end method

.method static synthetic e(Lcom/ironsource/c9$b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/c9$b;->a:Z

    return p1
.end method

.method static synthetic f(Lcom/ironsource/c9$b;)J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/c9$b;->c:J

    return-wide v0
.end method

.method static synthetic g(Lcom/ironsource/c9$b;)[I
    .registers 1

    iget-object p0, p0, Lcom/ironsource/c9$b;->b:[I

    return-object p0
.end method

.method static synthetic h(Lcom/ironsource/c9$b;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/c9$b;->b()V

    return-void
.end method

.method static synthetic i(Lcom/ironsource/c9$b;)[B
    .registers 1

    iget-object p0, p0, Lcom/ironsource/c9$b;->d:[B

    return-object p0
.end method

.method private j(Lcom/ironsource/c9$b;)V
    .registers 6

    iget-object v0, p1, Lcom/ironsource/c9$b;->d:[B

    iget-object v1, p0, Lcom/ironsource/c9$b;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/ironsource/c9$b;->b:[I

    iget-object v1, p0, Lcom/ironsource/c9$b;->b:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/ironsource/c9$b;->a:Z

    iput-boolean v0, p0, Lcom/ironsource/c9$b;->a:Z

    iget-wide v0, p1, Lcom/ironsource/c9$b;->c:J

    iput-wide v0, p0, Lcom/ironsource/c9$b;->c:J

    return-void
.end method
