###### Class com.mbridge.msdk.mbbanner.common.c.c.AnonymousClass6 (com.mbridge.msdk.mbbanner.common.c.c$6)
.class final Lcom/mbridge/msdk/mbbanner/common/c/c$6;
.super Lcom/mbridge/msdk/foundation/same/e/a;
.source "BannerShowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbbanner/common/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/common/c/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lcom/mbridge/msdk/mbbanner/common/c/c;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/c/c$6;->a:Lcom/mbridge/msdk/mbbanner/common/c/c;

    const-string v1, "banner render failed because render is timeout"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbbanner/common/c/c;->a(Lcom/mbridge/msdk/mbbanner/common/c/c;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method
