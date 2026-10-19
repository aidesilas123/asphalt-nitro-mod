###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent.a (com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$a;
.super Ljava/lang/Object;
.source "PopUpsViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
