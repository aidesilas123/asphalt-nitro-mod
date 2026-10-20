###### Class com.applovin.exoplayer2.v1 (com.applovin.exoplayer2.v1)
.class public final synthetic Lcom/applovin/exoplayer2/v1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/v1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/v1;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/v1;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/v1;->a:Lcom/applovin/exoplayer2/v1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/x;->b(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/x;

    move-result-object p1

    return-object p1
.end method
