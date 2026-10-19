###### Class com.applovin.exoplayer2.j.m (com.applovin.exoplayer2.j.m)
.class public final synthetic Lcom/applovin/exoplayer2/j/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/j/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j/m;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/m;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/j/m;->a:Lcom/applovin/exoplayer2/j/m;

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

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$c;->c(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p1

    return-object p1
.end method
