###### Class com.applovin.exoplayer2.e.a.b (com.applovin.exoplayer2.e.a.b)
.class public final synthetic Lcom/applovin/exoplayer2/e/a/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/e/l;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/e/a/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/e/a/b;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/a/b;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/e/a/b;->a:Lcom/applovin/exoplayer2/e/a/b;

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

    invoke-static {}, Lcom/applovin/exoplayer2/e/a/a;->c()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method
