###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent (com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;
.super Ljava/lang/Object;
.source "PopUpsViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;,
        Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;
    }
.end annotation


# instance fields
.field private a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;

.field b:Landroid/widget/RelativeLayout$LayoutParams;

.field private c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

.field private d:Landroid/webkit/WebView;

.field private e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private final l:Z

.field m:Ljava/lang/String;

.field private n:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->f:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->g:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->h:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->j:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    return-void
.end method

.method private a()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;

    iget v2, v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->c:I

    iget v1, v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->d:I

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method static synthetic access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i:Z

    return p0
.end method

.method static synthetic access$302(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->g:Z

    return p1
.end method

.method static synthetic access$400(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->h(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->e(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->f(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->g(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private c()V
    .registers 5

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->o()V

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$a;)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-virtual {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->m(Landroid/webkit/WebView;)V

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->b:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->Present(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    const/4 v0, 0x1

    const-string v1, "Creating web view"

    const-string v2, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java"

    const/16 v3, 0x86

    invoke-static {v0, v1, v2, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    :cond_1e
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;

    if-eqz v0, :cond_24

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;

    :cond_24
    return-void
.end method

.method private e(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->a:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i:Z

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->k:Z

    iput-boolean p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->j:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed loading url"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const-string p3, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java"

    const/16 p4, 0x171

    invoke-static {p2, p1, p3, p4}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    sget-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    invoke-virtual {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->e()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->OnErrorMessage(I)V

    iget-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->g:Z

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i()V

    :cond_33
    return-void
.end method

.method private f(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 8

    iget-boolean p1, p1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->b:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Page finished loading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x17c

    const/4 v0, 0x1

    const-string v1, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java"

    invoke-static {v0, p1, v1, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/webkit/WebView;->getVisibility()I

    iget-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->f:Z

    const/4 p3, 0x0

    if-nez p1, :cond_33

    const/4 p1, 0x2

    const/16 v2, 0x181

    const-string v3, "Control not visible"

    invoke-static {p1, v3, v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    const/16 p1, 0x8

    iput-boolean p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->g:Z

    goto :goto_3d

    :cond_33
    const/16 p1, 0x185

    const-string v2, "Control visible"

    invoke-static {v0, v2, v1, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->g:Z

    const/4 p1, 0x0

    :goto_3d
    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting visibility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v2, 0x18b

    invoke-static {v0, p3, v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->k:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->j:Z

    return-void
.end method

.method private g(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "navigating to "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    const-string p4, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java"

    const/16 v0, 0x192

    invoke-static {p3, p2, p4, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->a:Z

    iput-boolean p2, p1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->b:Z

    iput-boolean p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->h:Z

    return-void
.end method

.method private h(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    invoke-static {p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->OnAssetTracking(Ljava/lang/String;)V

    const-string p2, "goto:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java"

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz p2, :cond_2b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "goto: prefix detected with url "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x147

    invoke-static {v2, p1, v0, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i()V

    goto/16 :goto_d8

    :cond_2b
    const-string p2, "exit:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_bd

    const-string p2, "autoexit:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3d

    goto/16 :goto_bd

    :cond_3d
    const-string p2, "xpromo:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xpromo: prefix detected with url "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x14f

    invoke-static {v2, p1, v0, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-virtual {p3, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->h(Ljava/lang/String;)V

    goto :goto_d8

    :cond_68
    const-string p2, "http:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "http: prefix detected with url "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x152

    invoke-static {v2, p1, v0, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-virtual {p1, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->h(Ljava/lang/String;)V

    goto :goto_d8

    :cond_8c
    const-string p2, "browser:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-virtual {p3, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d9

    :cond_99
    const-string p2, "survey:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-virtual {p3, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->m:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d9

    :cond_b7
    iput-boolean v2, p1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->b:Z

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i()V

    goto :goto_d8

    :cond_bd
    :goto_bd
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit: prefix detected with url "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x14a

    invoke-static {v2, p2, v0, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    iput-boolean v2, p1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->b:Z

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i()V

    :goto_d8
    move-object p1, v1

    :goto_d9
    if-eq p1, v1, :cond_f4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Redirect url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x163

    invoke-static {v2, p2, v0, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->showInGameBrowserWithUrl(Ljava/lang/String;)V

    :cond_f4
    return v2
.end method

.method private m(Landroid/webkit/WebView;)V
    .registers 6

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$c;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$c;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_64

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_64
    return-void
.end method

.method private o()V
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-virtual {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;

    iget v2, v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->a:I

    iget v1, v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-virtual {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->c()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$a;

    invoke-direct {v1, p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

.method public i()V
    .registers 5

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n(ZLjava/lang/String;Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    :try_start_6
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2c

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_2c

    :catch_e
    move-exception v0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HideComponent error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13f

    const-string v3, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java"

    invoke-static {v1, v0, v3, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public j(ID)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "onControllerEvent(%d, %f)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->b(Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n:Landroid/widget/RelativeLayout;

    :cond_25
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;

    if-eqz v0, :cond_2b

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;

    :cond_2b
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->m:Ljava/lang/String;

    return-void
.end method

.method public n(ZLjava/lang/String;Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
    .registers 10

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->f:Z

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const/4 v1, 0x1

    const-string v2, "PopUpsViewComponent.ShowComponent() start"

    const-string v3, "D:\\Maintenance\\Asphalt_Nitro_V2\\sources\\libs\\popupslib\\src\\PopUpsLib\\os\\android\\PopUpsViewComponent.java"

    const/16 v4, 0x93

    invoke-static {v1, v2, v3, v4}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x2

    if-nez p1, :cond_1d

    iget-object v4, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    if-nez v4, :cond_1d

    const/16 p1, 0x97

    const-string p2, "PopUpsViewComponent.ShowComponent() error: (false == bShow && null == webView) is true"

    invoke-static {v2, p2, v3, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1d
    if-eqz p1, :cond_ce

    const/16 v4, 0x9e

    const-string v5, "PopUpsViewComponent.ShowComponent() creating view"

    invoke-static {v1, v5, v3, v4}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d()V

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_bc

    iget-object v4, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    if-eqz v4, :cond_b9

    const/16 v4, 0xa4

    const-string v5, "PopUpsViewComponent.ShowComponent() loading file"

    invoke-static {v1, v5, v3, v4}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    if-eqz v4, :cond_ce

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?OS=android&width="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;

    iget p2, p2, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->c:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&height="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;

    iget p2, p2, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_aa

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_aa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopUpsViewComponent.ShowComponent() customQueryString: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa8

    invoke-static {v1, v0, v3, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_b1

    :cond_aa
    const/16 p3, 0xab

    const-string v0, "PopUpsViewComponent.ShowComponent() customQueryString invalid"

    invoke-static {v2, v0, v3, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_b1
    iget-object p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    invoke-virtual {p3, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    goto :goto_ce

    :cond_b9
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    goto :goto_ce

    :cond_bc
    const/4 p1, 0x3

    const/16 p2, 0xb6

    const-string p3, "PopUpsViewComponent.ShowComponent() error: E_FILE_NOT_VALID"

    invoke-static {p1, p3, v3, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->Log(ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->e()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->OnErrorMessage(I)V

    const/4 p1, 0x0

    :cond_ce
    :goto_ce
    iget-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getVisibility()I

    move-result p2

    if-nez p1, :cond_dc

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d()V

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c()V

    :cond_dc
    iget-object p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-virtual {p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->b()Landroid/app/Activity;

    move-result-object p3

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$b;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;ZI)V

    invoke-virtual {p3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public p()I
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_f

    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->f:Z

    if-eqz v1, :cond_f

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v0

    return v0

    :cond_f
    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->g:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v0

    return v0

    :cond_20
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->h:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v0

    return v0

    :cond_2b
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i:Z

    if-nez v0, :cond_36

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v0

    return v0

    :cond_36
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v0

    return v0
.end method

.method public q()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->f:Z

    if-eqz v0, :cond_1f

    const-string v0, "exit:"

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->OnAssetTracking(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->b:Z

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$d;

    invoke-direct {v1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$d;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public r(IIII)V
    .registers 12

    new-instance v6, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;IIII)V

    iput-object v6, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;

    return-void
.end method

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

###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent.e (com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent$e)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;
.super Landroid/webkit/WebViewClient;
.source "PopUpsViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field final synthetic c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;


# direct methods
.method private constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->a:Z

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$600(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$700(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$500(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-static {v0, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->access$400(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$e;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent.f (com.gameloft.android.ANMP.GloftAGHM.PopUpsViewComponent$f)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;
.super Ljava/lang/Object;
.source "PopUpsViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field final synthetic e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;


# direct methods
.method public constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;IIII)V
    .registers 6

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->a:I

    iput p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->b:I

    iput p4, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->c:I

    iput p5, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent$f;->d:I

    return-void
.end method
