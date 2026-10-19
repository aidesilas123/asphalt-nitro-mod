###### Class com.ironsource.a6.a (com.ironsource.a6$a)
.class Lcom/ironsource/a6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/a6;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/a6;


# direct methods
.method constructor <init>(Lcom/ironsource/a6;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/a6$a;->c:Lcom/ironsource/a6;

    iput-object p2, p0, Lcom/ironsource/a6$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/a6$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/a6$a;->c:Lcom/ironsource/a6;

    invoke-static {v0}, Lcom/ironsource/a6;->a(Lcom/ironsource/a6;)Lcom/ironsource/f6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/f6;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ironsource/a6$a;->c:Lcom/ironsource/a6;

    invoke-static {v0}, Lcom/ironsource/a6;->a(Lcom/ironsource/a6;)Lcom/ironsource/f6;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/a6$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/a6$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/f6;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/a6$a;->c:Lcom/ironsource/a6;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/a6;->b(Lcom/ironsource/a6;Lcom/ironsource/f6;)Lcom/ironsource/f6;

    return-void
.end method
