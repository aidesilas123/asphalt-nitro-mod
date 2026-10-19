###### Class io.didomi.drawable.E7 (io.didomi.sdk.E7)
.class public final Lio/didomi/sdk/E7;
.super Lio/didomi/sdk/H7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/E7$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/didomi/sdk/E7;",
        "Lio/didomi/sdk/H7;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "onAttach",
        "(Landroid/content/Context;)V",
        "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;",
        "d",
        "()Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;",
        "k",
        "i",
        "g",
        "e",
        "a",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final e:Lio/didomi/sdk/E7$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/E7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/E7$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/E7;->e:Lio/didomi/sdk/E7$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/H7;-><init>()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/E2;Landroid/view/View;)V
    .registers 2

    const-string p1, "$this_switch"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/E2;->b:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    return-void
.end method

.method private static final a(Lio/didomi/sdk/E7;Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lio/didomi/sdk/E2;->a(Landroid/view/View;)Lio/didomi/sdk/E2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/H7;->a(Lio/didomi/sdk/E2;)V

    return-void
.end method

.method public static synthetic p(Lio/didomi/sdk/E7;Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/E7;->a(Lio/didomi/sdk/E7;Landroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lio/didomi/sdk/E2;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/E7;->a(Lio/didomi/sdk/E2;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public d()Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;
    .registers 2

    sget-object v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->CONSENT:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    return-object v0
.end method

.method public g()V
    .registers 5

    invoke-virtual {p0}, Lio/didomi/sdk/H7;->a()Lio/didomi/sdk/i1;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lio/didomi/sdk/i1;->e:Landroid/view/ViewStub;

    if-eqz v0, :cond_1a

    new-instance v1, Lio/didomi/sdk/ha;

    invoke-direct {v1, p0}, Lio/didomi/sdk/ha;-><init>(Lio/didomi/sdk/E7;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    sget v1, Lio/didomi/sdk/R$layout;->didomi_view_tv_item_switch:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_1a
    invoke-virtual {p0}, Lio/didomi/sdk/H7;->c()Lio/didomi/sdk/E2;

    move-result-object v0

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/h9;->L()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    iget-object v2, v0, Lio/didomi/sdk/E2;->b:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    sget-object v3, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-ne v1, v3, :cond_3a

    const/4 v1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    invoke-virtual {v2, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setChecked(Z)V

    new-instance v1, Lio/didomi/sdk/E7$b;

    invoke-direct {v1, p0, v0}, Lio/didomi/sdk/E7$b;-><init>(Lio/didomi/sdk/E7;Lio/didomi/sdk/E2;)V

    invoke-virtual {v2, v1}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->setCallback(Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;)V

    iget-object v1, v0, Lio/didomi/sdk/E2;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/t8;->B0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lio/didomi/sdk/E2;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lio/didomi/sdk/E2;->b:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-virtual {v2}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {p0}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/t8;->N0()Ljava/lang/String;

    move-result-object v2

    goto :goto_6e

    :cond_66
    invoke-virtual {p0}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/t8;->M0()Ljava/lang/String;

    move-result-object v2

    :goto_6e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lio/didomi/sdk/E2;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lio/didomi/sdk/ia;

    invoke-direct {v2, v0}, Lio/didomi/sdk/ia;-><init>(Lio/didomi/sdk/E2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lio/didomi/sdk/E2;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/H7;->a(Landroid/view/View;)V

    :cond_89
    return-void
.end method

.method public i()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/H7;->a()Lio/didomi/sdk/i1;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lio/didomi/sdk/i1;->g:Landroid/widget/TextView;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_d

    goto :goto_18

    :cond_d
    invoke-virtual {p0}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/t8;->f0()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_18
    return-void
.end method

.method public k()V
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/H7;->a()Lio/didomi/sdk/i1;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lio/didomi/sdk/i1;->h:Landroid/widget/TextView;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_d

    goto :goto_29

    :cond_d
    invoke-virtual {p0}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/h9;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/t8;->p0()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toUpperCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_29
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi$Companion;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->getComponent$android_release()Lio/didomi/sdk/J0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/E7;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

###### Class io.didomi.drawable.E7.Companion (io.didomi.sdk.E7$a)
.class public final Lio/didomi/sdk/E7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/E7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/didomi/sdk/E7$a;",
        "",
        "<init>",
        "()V",
        "",
        "TAG",
        "Ljava/lang/String;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/E7$a;-><init>()V

    return-void
.end method

###### Class io.didomi.sdk.E7.b (io.didomi.sdk.E7$b)
.class public final Lio/didomi/sdk/E7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/E7;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "io/didomi/sdk/E7$b",
        "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$a;",
        "Lio/didomi/sdk/view/ctv/DidomiTVSwitch;",
        "switch",
        "",
        "isChecked",
        "",
        "a",
        "(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/E7;

.field final synthetic b:Lio/didomi/sdk/E2;


# direct methods
.method constructor <init>(Lio/didomi/sdk/E7;Lio/didomi/sdk/E2;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/E7$b;->a:Lio/didomi/sdk/E7;

    iput-object p2, p0, Lio/didomi/sdk/E7$b;->b:Lio/didomi/sdk/E2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;Z)V
    .registers 4

    const-string v0, "switch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/E7$b;->a:Lio/didomi/sdk/E7;

    invoke-virtual {p1}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/t8;->c(Z)V

    iget-object p1, p0, Lio/didomi/sdk/E7$b;->b:Lio/didomi/sdk/E2;

    iget-object p1, p1, Lio/didomi/sdk/E2;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lio/didomi/sdk/E7$b;->a:Lio/didomi/sdk/E7;

    invoke-virtual {p2}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/t8;->N0()Ljava/lang/String;

    move-result-object p2

    goto :goto_29

    :cond_1f
    iget-object p2, p0, Lio/didomi/sdk/E7$b;->a:Lio/didomi/sdk/E7;

    invoke-virtual {p2}, Lio/didomi/sdk/H7;->e()Lio/didomi/sdk/t8;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/t8;->M0()Ljava/lang/String;

    move-result-object p2

    :goto_29
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class io.didomi.drawable.ha (io.didomi.sdk.ha)
.class public final synthetic Lio/didomi/sdk/ha;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/E7;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/E7;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ha;->a:Lio/didomi/sdk/E7;

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/ha;->a:Lio/didomi/sdk/E7;

    invoke-static {v0, p1, p2}, Lio/didomi/sdk/E7;->p(Lio/didomi/sdk/E7;Landroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.ia (io.didomi.sdk.ia)
.class public final synthetic Lio/didomi/sdk/ia;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/E2;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/E2;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ia;->a:Lio/didomi/sdk/E2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ia;->a:Lio/didomi/sdk/E2;

    invoke-static {v0, p1}, Lio/didomi/sdk/E7;->q(Lio/didomi/sdk/E2;Landroid/view/View;)V

    return-void
.end method
