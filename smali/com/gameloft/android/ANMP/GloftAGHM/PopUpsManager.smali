###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsManager (com.gameloft.android.ANMP.GloftAGHM.PopUpsManager)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;
.super Ljava/lang/Object;
.source "PopUpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;,
        Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;
    }
.end annotation


# static fields
.field private static a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;


# instance fields
.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/app/Activity;

.field private d:I

.field private e:I

.field private f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

.field private g:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->d:I

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    return-void
.end method

.method public static GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    :cond_b
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    return-object v0
.end method

.method public static IsPopupShow()Z
    .registers 3

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->n()I

    move-result v0

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v2

    if-ne v0, v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method static synthetic access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->g:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->g:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static handleBackKey()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    if-eqz v0, :cond_9

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->p()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private p()Z
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public c()Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public d()V
    .registers 2

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->m()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->i()V

    return-void
.end method

.method public e(ID)V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->j(ID)V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->c:Landroid/app/Activity;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->k()V

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->l(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->b:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->c:Landroid/app/Activity;

    :cond_16
    return-void
.end method

.method public g(I)V
    .registers 2

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->OnErrorMessage(I)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_19

    :cond_9
    :try_start_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->c:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    :goto_19
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->l(Ljava/lang/String;)V

    return-void
.end method

.method public j(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .registers 3

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    :cond_5
    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->b:Landroid/widget/RelativeLayout;

    return-void

    :cond_a
    :goto_a
    sget-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    invoke-virtual {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->g(I)V

    return-void
.end method

.method public k(ZLjava/lang/String;Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
    .registers 5

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->m()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    invoke-virtual {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->e()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->g(I)V

    goto :goto_1a

    :cond_12
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->m()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->n(ZLjava/lang/String;Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    move-result-object p1

    :goto_1a
    return-object p1
.end method

.method public l(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->c:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    return-object v0
.end method

.method public n()I
    .registers 2

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->m()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->m()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->p()I

    move-result v0

    return v0

    :cond_f
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e()I

    move-result v0

    return v0
.end method

.method public o()Z
    .registers 2

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public q(IIII)V
    .registers 6

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->m()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsViewComponent;->r(IIII)V

    return-void
.end method
