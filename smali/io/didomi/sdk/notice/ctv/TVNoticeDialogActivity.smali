###### Class io.didomi.drawable.notice.ctv.TVNoticeDialogActivity (io.didomi.sdk.notice.ctv.TVNoticeDialogActivity)
.class public final Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;
.super Lio/didomi/sdk/n;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/notice/ctv/a$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0012\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;",
        "Lio/didomi/sdk/n;",
        "Lio/didomi/sdk/notice/ctv/a$a;",
        "<init>",
        "()V",
        "",
        "l",
        "m",
        "",
        "hasPrivacyDialog",
        "a",
        "(Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "b",
        "io/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a",
        "d",
        "Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;",
        "backPressedCallback",
        "Lio/didomi/sdk/G0;",
        "e",
        "Lio/didomi/sdk/G0;",
        "binding",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final d:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;

.field private e:Lio/didomi/sdk/G0;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/n;-><init>()V

    new-instance v0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;

    invoke-direct {v0, p0}, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;-><init>(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V

    iput-object v0, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->d:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;

    return-void
.end method

.method public static synthetic N(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->a(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "io.didomi.dialog.QR_CODE"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-direct {p0, v0}, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->a(Z)V

    return-void
.end method

.method private final a(Z)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->e:Lio/didomi/sdk/G0;

    if-nez v0, :cond_a

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lio/didomi/sdk/G0;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    if-eqz p1, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lio/didomi/sdk/n;->g()V

    const/high16 p1, 0x60000

    goto :goto_22

    :cond_1d
    invoke-virtual {p0}, Lio/didomi/sdk/n;->h()V

    const/high16 p1, 0x20000

    :goto_22
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method private final l()V
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "io.didomi.dialog.CONSENT_POPUP"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lio/didomi/sdk/R$id;->container_ctv_notice_primary:I

    new-instance v3, Lio/didomi/sdk/notice/ctv/a;

    invoke-direct {v3}, Lio/didomi/sdk/notice/ctv/a;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final m()V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "io.didomi.dialog.QR_CODE"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->a(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lio/didomi/sdk/R$anim;->didomi_enter_from_right:I

    sget v3, Lio/didomi/sdk/R$anim;->didomi_fade_out:I

    sget v4, Lio/didomi/sdk/R$anim;->didomi_fade_in:I

    sget v5, Lio/didomi/sdk/R$anim;->didomi_exit_to_right:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lio/didomi/sdk/R$id;->container_ctv_notice_secondary:I

    new-instance v3, Lio/didomi/sdk/q6;

    invoke-direct {v3}, Lio/didomi/sdk/q6;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->m()V

    return-void
.end method

.method public b()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/G0;->a(Landroid/view/LayoutInflater;)Lio/didomi/sdk/G0;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->e:Lio/didomi/sdk/G0;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_1b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1b
    invoke-virtual {p1}, Lio/didomi/sdk/G0;->a()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->e:Lio/didomi/sdk/G0;

    if-nez p1, :cond_2a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    move-object v0, p1

    :goto_2b
    iget-object p1, v0, Lio/didomi/sdk/G0;->d:Landroid/view/View;

    const-string v0, "binding.viewCtvNoticeBackground"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/n;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->d:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lio/didomi/sdk/notice/ctv/b;

    invoke-direct {v0, p0}, Lio/didomi/sdk/notice/ctv/b;-><init>(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    invoke-direct {p0}, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->l()V

    return-void
.end method

.method protected onStart()V
    .registers 9

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

###### Class io.didomi.sdk.notice.ctv.TVNoticeDialogActivity.a (io.didomi.sdk.notice.ctv.TVNoticeDialogActivity$a)
.class public final Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "io/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a",
        "Landroidx/activity/OnBackPressedCallback;",
        "",
        "handleOnBackPressed",
        "()V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;


# direct methods
.method constructor <init>(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;->a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;->a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;->a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

###### Class io.didomi.drawable.notice.ctv.b (io.didomi.sdk.notice.ctv.b)
.class public final synthetic Lio/didomi/sdk/notice/ctv/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/notice/ctv/b;->a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/b;->a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;

    invoke-static {v0}, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->N(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V

    return-void
.end method
