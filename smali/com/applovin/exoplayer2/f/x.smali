###### Class com.applovin.exoplayer2.f.x (com.applovin.exoplayer2.f.x)
.class public final synthetic Lcom/applovin/exoplayer2/f/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/f/k;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/f/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/f/x;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/f/x;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/f/x;->a:Lcom/applovin/exoplayer2/f/x;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/applovin/exoplayer2/f/l;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
