###### Class com.moat.analytics.mobile.glft.m.AnonymousClass4 (com.moat.analytics.mobile.glft.m$4)
.class Lcom/moat/analytics/mobile/glft/m$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/m;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/NativeVideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/glft/v$a<",
        "Lcom/moat/analytics/mobile/glft/NativeVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/moat/analytics/mobile/glft/m;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/m;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/m$4;->b:Lcom/moat/analytics/mobile/glft/m;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/m$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/glft/a/b/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/glft/a/b/a<",
            "Lcom/moat/analytics/mobile/glft/NativeVideoTracker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/m$4;->a:Ljava/lang/String;

    const-string v1, "MoatFactory"

    const/4 v2, 0x3

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    :cond_e
    const-string v0, "Creating NativeVideo tracker."

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/glft/s;

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/m$4;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/glft/s;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0

    :cond_1f
    :goto_1f
    const-string v0, "partnerCode is null or empty. NativeVideoTracker initialization failed."

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/glft/a/b/a;->a()Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    return-object v0
.end method
