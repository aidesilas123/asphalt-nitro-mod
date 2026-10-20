###### Class com.moat.analytics.mobile.glft.c.AnonymousClass1 (com.moat.analytics.mobile.glft.c$1)
.class Lcom/moat/analytics/mobile/glft/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/c;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/c;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/c$1;->a:Lcom/moat/analytics/mobile/glft/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x3

    :try_start_1
    const-string v1, "MoatBaseVideoTracker"

    const-string v2, "Shutting down."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c$1;->a:Lcom/moat/analytics/mobile/glft/c;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/c;->a(Lcom/moat/analytics/mobile/glft/c;)Lcom/moat/analytics/mobile/glft/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/f;->a()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_16
    return-void
.end method
