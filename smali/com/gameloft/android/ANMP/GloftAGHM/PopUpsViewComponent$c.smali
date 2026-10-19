###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent.c (com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent$c)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$c;
.super Landroid/webkit/WebChromeClient;
.source "PopUpsViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->m(Landroid/webkit/WebView;)V
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

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$c;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- From line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java"

    const/16 v2, 0xf5

    invoke-static {v0, p1, v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    return v0
.end method
