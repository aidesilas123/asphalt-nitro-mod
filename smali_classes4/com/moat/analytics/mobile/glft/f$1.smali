###### Class com.moat.analytics.mobile.glft.f.AnonymousClass1 (com.moat.analytics.mobile.glft.f$1)
.class Lcom/moat/analytics/mobile/glft/f$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/f;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/f;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/f$1;->a:Lcom/moat/analytics/mobile/glft/f;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/f$1;->a:Lcom/moat/analytics/mobile/glft/f;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/f;->a(Lcom/moat/analytics/mobile/glft/f;)Z

    move-result p1

    if-nez p1, :cond_1a

    :try_start_8
    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/f$1;->a:Lcom/moat/analytics/mobile/glft/f;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/glft/f;->a(Lcom/moat/analytics/mobile/glft/f;Z)Z

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/f$1;->a:Lcom/moat/analytics/mobile/glft/f;

    iget-object p1, p1, Lcom/moat/analytics/mobile/glft/f;->b:Lcom/moat/analytics/mobile/glft/i;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/i;->a()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :cond_1a
    :goto_1a
    return-void
.end method
