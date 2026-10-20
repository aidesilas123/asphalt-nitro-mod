###### Class com.moat.analytics.mobile.glft.i.AnonymousClass1 (com.moat.analytics.mobile.glft.i$1)
.class Lcom/moat/analytics/mobile/glft/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/i;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/i;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/i;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/i$1;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 8

    const-string v0, "null"

    const-string v1, "MoatJavaScriptBridge"

    const/4 v2, 0x3

    if-eqz p1, :cond_50

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string v3, "false"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_50

    :cond_16
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i$1;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/i;->a(Lcom/moat/analytics/mobile/glft/i;)I

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i$1;->a:Lcom/moat/analytics/mobile/glft/i;

    const-string v0, "Javascript has found ad"

    invoke-static {v2, v1, p1, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i$1;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/i;->d(Lcom/moat/analytics/mobile/glft/i;)V

    :cond_32
    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i$1;->a:Lcom/moat/analytics/mobile/glft/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/glft/i;->a(Lcom/moat/analytics/mobile/glft/i;I)I

    goto :goto_8e

    :cond_39
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i$1;->a:Lcom/moat/analytics/mobile/glft/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unusual value from Javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, v0, p1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8e

    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/i$1;->a:Lcom/moat/analytics/mobile/glft/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received value is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5f

    goto :goto_70

    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(String)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, v3, p1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i$1;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/i;->a(Lcom/moat/analytics/mobile/glft/i;)I

    move-result p1

    const/16 v0, 0x32

    if-lt p1, v0, :cond_89

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i$1;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/i;->b(Lcom/moat/analytics/mobile/glft/i;)V

    :cond_89
    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i$1;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/i;->c(Lcom/moat/analytics/mobile/glft/i;)I

    :goto_8e
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/glft/i$1;->a(Ljava/lang/String;)V

    return-void
.end method
