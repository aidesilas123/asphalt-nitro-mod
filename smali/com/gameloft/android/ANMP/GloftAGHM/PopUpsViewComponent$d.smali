###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent.d (com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent$d)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$d;
.super Ljava/lang/Object;
.source "PopUpsViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->q()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$d;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$d;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "javascript:onControllerEvent(%d, %f)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$d;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i()V

    return-void
.end method
