###### Class com.mbridge.msdk.foundation.same.net.stack.c.AnonymousClass3 (com.mbridge.msdk.foundation.same.net.stack.c$3)
.class final Lcom/mbridge/msdk/foundation/same/net/stack/c$3;
.super Lcom/mbridge/msdk/foundation/same/report/d/b;
.source "OKHTTPClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/net/stack/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/net/stack/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/net/stack/c;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/stack/c$3;->a:Lcom/mbridge/msdk/foundation/same/net/stack/c;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/report/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/String;)V
    .registers 3

    const-string p1, "OKHTTPClientManager"

    const-string v0, "report failed"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 3

    const-string p1, "OKHTTPClientManager"

    const-string v0, "report success"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
