###### Class com.applovin.exoplayer2.i.h.b (com.applovin.exoplayer2.i.h.b)
.class final Lcom/applovin/exoplayer2/i/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/i/f;


# static fields
.field public static final Tn:Lcom/applovin/exoplayer2/i/h/b;


# instance fields
.field private final OV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/i/h/b;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/i/h/b;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/i/h/b;->Tn:Lcom/applovin/exoplayer2/i/h/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/h/b;->OV:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/i/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/h/b;->OV:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public be(J)I
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, -0x1

    :goto_9
    return p1
.end method

.method public bf(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/h/b;->OV:Ljava/util/List;

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public ej(I)J
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public lX()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
