###### Class com.applovin.exoplayer2.e.h.c (com.applovin.exoplayer2.e.h.c)
.class public Lcom/applovin/exoplayer2/e/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;


# static fields
.field public static final vq:Lcom/applovin/exoplayer2/e/l;


# instance fields
.field private BG:Lcom/applovin/exoplayer2/e/j;

.field private BH:Z

.field private Bu:Lcom/applovin/exoplayer2/e/h/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/e/h/j;->a:Lcom/applovin/exoplayer2/e/h/j;

    sput-object v0, Lcom/applovin/exoplayer2/e/h/c;->vq:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static I(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/l/y;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return-object p0
.end method

.method private R(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/e/h/e;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/h/e;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/exoplayer2/e/h/e;->f(Lcom/applovin/exoplayer2/e/i;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5e

    iget v2, v0, Lcom/applovin/exoplayer2/e/h/e;->bs:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_14

    goto :goto_5e

    :cond_14
    iget v0, v0, Lcom/applovin/exoplayer2/e/h/e;->BU:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v2, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/h/c;->I(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/l/y;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/h/b;->F(Lcom/applovin/exoplayer2/l/y;)Z

    move-result p1

    if-eqz p1, :cond_3a

    new-instance p1, Lcom/applovin/exoplayer2/e/h/b;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/h/b;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/c;->Bu:Lcom/applovin/exoplayer2/e/h/h;

    goto :goto_5d

    :cond_3a
    invoke-static {v2}, Lcom/applovin/exoplayer2/e/h/c;->I(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/l/y;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/h/i;->F(Lcom/applovin/exoplayer2/l/y;)Z

    move-result p1

    if-eqz p1, :cond_4c

    new-instance p1, Lcom/applovin/exoplayer2/e/h/i;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/h/i;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/c;->Bu:Lcom/applovin/exoplayer2/e/h/h;

    goto :goto_5d

    :cond_4c
    invoke-static {v2}, Lcom/applovin/exoplayer2/e/h/c;->I(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/l/y;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/h/g;->F(Lcom/applovin/exoplayer2/l/y;)Z

    move-result p1

    if-eqz p1, :cond_5e

    new-instance p1, Lcom/applovin/exoplayer2/e/h/g;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/h/g;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/c;->Bu:Lcom/applovin/exoplayer2/e/h/h;

    :goto_5d
    return v1

    :cond_5e
    :goto_5e
    return v3
.end method

.method public static synthetic c()[Lcom/applovin/exoplayer2/e/h;
    .registers 1

    invoke-static {}, Lcom/applovin/exoplayer2/e/h/c;->ih()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ih()[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    new-instance v1, Lcom/applovin/exoplayer2/e/h/c;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/h/c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/j;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/c;->BG:Lcom/applovin/exoplayer2/e/j;

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/h/c;->R(Lcom/applovin/exoplayer2/e/i;)Z

    move-result p1
    :try_end_4
    .catch Lcom/applovin/exoplayer2/ai; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/c;->BG:Lcom/applovin/exoplayer2/e/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/c;->Bu:Lcom/applovin/exoplayer2/e/h/h;

    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/h/c;->R(Lcom/applovin/exoplayer2/e/i;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    goto :goto_1b

    :cond_13
    const/4 p1, 0x0

    const-string p2, "Failed to determine bitstream type"

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/h/c;->BH:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/c;->BG:Lcom/applovin/exoplayer2/e/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/h/c;->BG:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/e/j;->ig()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/h/c;->Bu:Lcom/applovin/exoplayer2/e/h/h;

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/h/c;->BG:Lcom/applovin/exoplayer2/e/j;

    invoke-virtual {v1, v3, v0}, Lcom/applovin/exoplayer2/e/h/h;->a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/x;)V

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/h/c;->BH:Z

    :cond_35
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/c;->Bu:Lcom/applovin/exoplayer2/e/h/h;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/h/h;->b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I

    move-result p1

    return p1
.end method

.method public o(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/c;->Bu:Lcom/applovin/exoplayer2/e/h/h;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/e/h/h;->o(JJ)V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method

###### Class com.applovin.exoplayer2.e.h.j (com.applovin.exoplayer2.e.h.j)
.class public final synthetic Lcom/applovin/exoplayer2/e/h/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/e/l;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/e/h/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/e/h/j;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/h/j;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/e/h/j;->a:Lcom/applovin/exoplayer2/e/h/j;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/e/c0;->a(Lcom/applovin/exoplayer2/e/l;Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;

    move-result-object p1

    return-object p1
.end method

.method public final createExtractors()[Lcom/applovin/exoplayer2/e/h;
    .registers 2

    invoke-static {}, Lcom/applovin/exoplayer2/e/h/c;->c()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method
