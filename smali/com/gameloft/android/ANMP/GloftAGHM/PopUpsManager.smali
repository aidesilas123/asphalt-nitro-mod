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

###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsManager.PopUpsError (com.gameloft.android.ANMP.GloftAGHM.PopUpsManager$PopUpsError)
.class public final enum Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
.super Ljava/lang/Enum;
.source "PopUpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PopUpsError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum g:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field public static final enum h:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

.field private static final synthetic i:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v1, "E_UNDEFINED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v3, "E_SUCCESSFUL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v3, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v5, "E_FILE_NOT_VALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v5, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v7, "E_FILE_DOWNLONDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v7, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v9, "E_FILE_DOWNLOND_FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->e:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v9, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v11, "E_BRIDGE_CLASS_NEVER_INIT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->f:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v11, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v13, "E_UNZIP_FAILED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->g:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    new-instance v13, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const-string v15, "E_FAILED_TO_CREATE_WEBVIEW"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    const/4 v0, 0x5

    aput-object v9, v15, v0

    aput-object v11, v15, v14

    aput-object v13, v15, v12

    sput-object v15, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->i:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->j:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
    .registers 2

    const-class v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    return-object p0
.end method

.method public static values()[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->i:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    invoke-virtual {v0}, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    return-object v0
.end method


# virtual methods
.method public e()I
    .registers 2

    iget v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->j:I

    return v0
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsManager.ViewState (com.gameloft.android.ANMP.GloftAGHM.PopUpsManager$ViewState)
.class public final enum Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;
.super Ljava/lang/Enum;
.source "PopUpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

.field public static final enum b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

.field public static final enum c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

.field public static final enum d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

.field private static final synthetic e:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    const-string v1, "E_VS_UNDEFINED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    const-string v3, "E_VS_NOT_DOWNLOAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    new-instance v3, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    const-string v5, "E_VS_INVISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    new-instance v5, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    const-string v7, "E_VS_VISIBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->d:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;
    .registers 2

    const-class v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->e:[Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    invoke-virtual {v0}, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;

    return-object v0
.end method


# virtual methods
.method public e()I
    .registers 2

    iget v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$ViewState;->f:I

    return v0
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsManager.a (com.gameloft.android.ANMP.GloftAGHM.PopUpsManager$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;
.super Ljava/lang/Object;
.source "PopUpsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->l(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    iput-boolean p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->a:Z

    iput-object p3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->a:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$100(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$002(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_64

    :cond_4d
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$a;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->access$002(Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_64
    :goto_64
    return-void
.end method
