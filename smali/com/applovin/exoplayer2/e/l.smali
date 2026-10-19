###### Class com.applovin.exoplayer2.e.l (com.applovin.exoplayer2.e.l)
.class public interface abstract Lcom/applovin/exoplayer2/e/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ux:Lcom/applovin/exoplayer2/e/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/e/a0;->a:Lcom/applovin/exoplayer2/e/a0;

    sput-object v0, Lcom/applovin/exoplayer2/e/l;->ux:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/applovin/exoplayer2/e/h;"
        }
    .end annotation
.end method

.method public abstract createExtractors()[Lcom/applovin/exoplayer2/e/h;
.end method
