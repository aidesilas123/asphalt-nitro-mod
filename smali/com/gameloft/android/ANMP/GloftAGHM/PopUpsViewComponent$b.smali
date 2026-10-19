###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent.b (com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;
.super Ljava/lang/Object;
.source "PopUpsViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n(ZLjava/lang/String;Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;ZI)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    iput-boolean p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->a:Z

    iput p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$200(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-string v3, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java"

    const/4 v4, 0x1

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->a:Z

    if-ne v4, v0, :cond_1a

    const/16 v0, 0xc7

    const-string v5, "PopUpsViewComponent.ShowComponent() runOnUiThread: show: true"

    invoke-static {v4, v5, v3, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_21

    :cond_1a
    const/16 v0, 0xc9

    const-string v5, "PopUpsViewComponent.ShowComponent() runOnUiThread: show: false"

    invoke-static {v4, v5, v3, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_21
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)Landroid/webkit/WebView;

    move-result-object v0

    iget-boolean v3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->a:Z

    if-eqz v3, :cond_2c

    goto :goto_2e

    :cond_2c
    const/16 v1, 0x8

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->a:Z

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$302(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Z)Z

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    iget v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->b:I

    if-eq v0, v1, :cond_8f

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_59

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v0

    goto :goto_5f

    :cond_59
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v0

    :goto_5f
    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->OnViewState(I)V

    goto :goto_8f

    :cond_63
    const/16 v0, 0xd3

    const-string v5, "setting visibility "

    invoke-static {v4, v5, v3, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$302(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Z)Z

    iget v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;->b:I

    if-eq v2, v0, :cond_86

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->OnViewState(I)V

    goto :goto_8f

    :cond_86
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->OnViewState(I)V

    :cond_8f
    :goto_8f
    return-void
.end method
