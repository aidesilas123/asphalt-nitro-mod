###### Class com.applovin.exoplayer2.j0 (com.applovin.exoplayer2.j0)
.class public final synthetic Lcom/applovin/exoplayer2/j0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/j0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/j0;->a:Lcom/applovin/exoplayer2/j0;

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

    invoke-static {p1}, Lcom/applovin/exoplayer2/am;->a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/am;

    move-result-object p1

    return-object p1
.end method
