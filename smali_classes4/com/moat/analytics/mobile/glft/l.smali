###### Class com.moat.analytics.mobile.glft.l (com.moat.analytics.mobile.glft.l)
.class Lcom/moat/analytics/mobile/glft/l;
.super Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Exception;)V
    .registers 2

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->d()Lcom/moat/analytics/mobile/glft/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/u;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MoatException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method
