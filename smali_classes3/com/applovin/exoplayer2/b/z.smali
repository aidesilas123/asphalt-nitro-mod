###### Class com.applovin.exoplayer2.b.z (com.applovin.exoplayer2.b.z)
.class public final synthetic Lcom/applovin/exoplayer2/b/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/b/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/b/z;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/b/z;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/b/z;->a:Lcom/applovin/exoplayer2/b/z;

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

    invoke-static {p1}, Lcom/applovin/exoplayer2/b/d;->a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/b/d;

    move-result-object p1

    return-object p1
.end method
