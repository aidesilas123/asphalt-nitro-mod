###### Class io.didomi.drawable.preferences.ctv.TVPreferencesDialogActivity (io.didomi.sdk.preferences.ctv.TVPreferencesDialogActivity)
.class public final Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;
.super Lio/didomi/sdk/n;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/O3;
.implements Lio/didomi/sdk/s6;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000k\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001+\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0005J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u000f\u0010\u000c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u0019\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001f\u0010\u0005R\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010!R\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010!R\u0014\u0010$\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010!R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\"\u0010F\u001a\u00020?8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\"\u0010M\u001a\u00020G8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u0016\u0010P\u001a\u00020N8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\t\u0010OR\u0016\u0010S\u001a\u00020Q8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010RR\u0016\u0010U\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010T\u00a8\u0006V"
    }
    d2 = {
        "Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;",
        "Lio/didomi/sdk/n;",
        "Lio/didomi/sdk/O3;",
        "Lio/didomi/sdk/s6;",
        "<init>",
        "()V",
        "",
        "u",
        "l",
        "m",
        "E",
        "C",
        "B",
        "D",
        "A",
        "v",
        "w",
        "n",
        "o",
        "x",
        "y",
        "z",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "c",
        "e",
        "f",
        "d",
        "onDestroy",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnClickListener;",
        "saveClickListener",
        "agreeAllClickListener",
        "disagreeAllClickListener",
        "",
        "g",
        "Lkotlin/Lazy;",
        "r",
        "()Z",
        "shouldOpenVendors",
        "io/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a",
        "h",
        "Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;",
        "backPressedCallback",
        "Lio/didomi/sdk/l7;",
        "i",
        "Lio/didomi/sdk/l7;",
        "q",
        "()Lio/didomi/sdk/l7;",
        "setPurposesModel",
        "(Lio/didomi/sdk/l7;)V",
        "purposesModel",
        "Lio/didomi/sdk/t8;",
        "j",
        "Lio/didomi/sdk/t8;",
        "t",
        "()Lio/didomi/sdk/t8;",
        "setVendorsModel",
        "(Lio/didomi/sdk/t8;)V",
        "vendorsModel",
        "Lio/didomi/sdk/D8;",
        "k",
        "Lio/didomi/sdk/D8;",
        "s",
        "()Lio/didomi/sdk/D8;",
        "setUiProvider",
        "(Lio/didomi/sdk/D8;)V",
        "uiProvider",
        "Lio/didomi/sdk/I3;",
        "Lio/didomi/sdk/I3;",
        "p",
        "()Lio/didomi/sdk/I3;",
        "setNavigationManager",
        "(Lio/didomi/sdk/I3;)V",
        "navigationManager",
        "Lio/didomi/sdk/H0;",
        "Lio/didomi/sdk/H0;",
        "binding",
        "Lio/didomi/sdk/F2;",
        "Lio/didomi/sdk/F2;",
        "bindingPrimary",
        "Z",
        "lockFocus",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Landroid/view/View$OnClickListener;

.field private final g:Lkotlin/i;

.field private final h:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;

.field public i:Lio/didomi/sdk/l7;

.field public j:Lio/didomi/sdk/t8;

.field public k:Lio/didomi/sdk/D8;

.field public l:Lio/didomi/sdk/I3;

.field private m:Lio/didomi/sdk/H0;

.field private n:Lio/didomi/sdk/F2;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/n;-><init>()V

    new-instance v0, Lio/didomi/sdk/preferences/ctv/l;

    invoke-direct {v0, p0}, Lio/didomi/sdk/preferences/ctv/l;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    iput-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lio/didomi/sdk/preferences/ctv/d;

    invoke-direct {v0, p0}, Lio/didomi/sdk/preferences/ctv/d;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    iput-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->e:Landroid/view/View$OnClickListener;

    new-instance v0, Lio/didomi/sdk/preferences/ctv/k;

    invoke-direct {v0, p0}, Lio/didomi/sdk/preferences/ctv/k;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    iput-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->f:Landroid/view/View$OnClickListener;

    new-instance v0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;

    invoke-direct {v0, p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    invoke-static {v0}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->g:Lkotlin/i;

    new-instance v0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;

    invoke-direct {v0, p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    iput-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->h:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;

    return-void
.end method

.method private final A()V
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez v0, :cond_a

    const-string v0, "bindingPrimary"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lio/didomi/sdk/F2;->b:Landroid/widget/Button;

    const-string v1, "updateAgreeButton$lambda$22"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lio/didomi/sdk/R$dimen;->didomi_tv_button_padding:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v4

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIIIILjava/lang/Object;)V

    iget-object v1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lio/didomi/sdk/preferences/ctv/i;->a:Lio/didomi/sdk/preferences/ctv/i;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->q()Lio/didomi/sdk/l7;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/a5;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final B()V
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez v0, :cond_a

    const-string v0, "bindingPrimary"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lio/didomi/sdk/F2;->c:Landroid/widget/Button;

    const-string v1, "updateDisagreeButton$lambda$18"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lio/didomi/sdk/R$dimen;->didomi_tv_button_padding:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v4

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIIIILjava/lang/Object;)V

    iget-object v1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lio/didomi/sdk/preferences/ctv/h;->a:Lio/didomi/sdk/preferences/ctv/h;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->q()Lio/didomi/sdk/l7;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/a5;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final C()V
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez v0, :cond_a

    const-string v0, "bindingPrimary"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lio/didomi/sdk/F2;->e:Landroid/widget/Button;

    const-string v1, "updatePurposeTab$lambda$16"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lio/didomi/sdk/R$dimen;->didomi_tv_tab_padding_start:I

    sget v4, Lio/didomi/sdk/R$dimen;->didomi_tv_tab_padding_end:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIIIILjava/lang/Object;)V

    new-instance v1, Lio/didomi/sdk/preferences/ctv/g;

    invoke-direct {v1, p0}, Lio/didomi/sdk/preferences/ctv/g;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Lio/didomi/sdk/preferences/ctv/a;

    invoke-direct {v1, p0}, Lio/didomi/sdk/preferences/ctv/a;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->q()Lio/didomi/sdk/l7;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/l7;->J1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final D()V
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez v0, :cond_a

    const-string v0, "bindingPrimary"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lio/didomi/sdk/F2;->d:Landroid/widget/Button;

    const-string v1, "updateSaveButton$lambda$20"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lio/didomi/sdk/R$dimen;->didomi_tv_button_padding:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v4

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIIIILjava/lang/Object;)V

    iget-object v1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lio/didomi/sdk/preferences/ctv/c;->a:Lio/didomi/sdk/preferences/ctv/c;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->q()Lio/didomi/sdk/l7;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/a5;->q0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final E()V
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez v0, :cond_a

    const-string v0, "bindingPrimary"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lio/didomi/sdk/F2;->f:Landroid/widget/Button;

    const-string v1, "updateVendorTab$lambda$13"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lio/didomi/sdk/R$dimen;->didomi_tv_tab_padding_start:I

    sget v4, Lio/didomi/sdk/R$dimen;->didomi_tv_tab_padding_end:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/k9;->a(Landroid/view/View;IIIIILjava/lang/Object;)V

    new-instance v1, Lio/didomi/sdk/preferences/ctv/j;

    invoke-direct {v1, p0}, Lio/didomi/sdk/preferences/ctv/j;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Lio/didomi/sdk/preferences/ctv/e;

    invoke-direct {v1, p0}, Lio/didomi/sdk/preferences/ctv/e;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->t()Lio/didomi/sdk/t8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/t8;->S0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic N(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->a(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic O(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->b(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    return-void
.end method

.method public static synthetic P(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->c(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Q(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->a(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->b(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic S(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->u()V

    return-void
.end method

.method public static synthetic T(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->a(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic U(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->b(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic V(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic W(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->b(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic X(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->b(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->c(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->m()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->q()Lio/didomi/sdk/l7;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->Y0()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;Z)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->o:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    if-nez p2, :cond_22

    iget-object p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez p1, :cond_16

    const-string p1, "bindingPrimary"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_16
    iget-object p1, p1, Lio/didomi/sdk/F2;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_22

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->v()V

    goto :goto_27

    :cond_22
    if-eqz p2, :cond_27

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->x()V

    :cond_27
    :goto_27
    return-void
.end method

.method private static final a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 3

    const/16 p0, 0x16

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static final a(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x16

    if-ne p2, p1, :cond_14

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_13

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n()V

    :cond_13
    return p2

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private static final b(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->l()V

    return-void
.end method

.method private static final b(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->q()Lio/didomi/sdk/l7;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->b1()V

    return-void
.end method

.method private static final b(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;Z)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->o:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    if-nez p2, :cond_22

    iget-object p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez p1, :cond_16

    const-string p1, "bindingPrimary"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_16
    iget-object p1, p1, Lio/didomi/sdk/F2;->e:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_22

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->w()V

    goto :goto_27

    :cond_22
    if-eqz p2, :cond_27

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->y()V

    :cond_27
    :goto_27
    return-void
.end method

.method private static final b(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 3

    const/16 p0, 0x16

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static final b(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x16

    if-ne p2, p1, :cond_14

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_13

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->o()V

    :cond_13
    return p2

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private static final c(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->q()Lio/didomi/sdk/l7;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->h1()V

    return-void
.end method

.method private static final c(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 3

    const/16 p0, 0x16

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private final l()V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "supportFragmentManager.fragments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/p;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_16

    return-void

    :cond_16
    instance-of v1, v0, Lio/didomi/sdk/C8;

    if-eqz v1, :cond_20

    check-cast v0, Lio/didomi/sdk/C8;

    invoke-interface {v0}, Lio/didomi/sdk/C8;->a()V

    return-void

    :cond_20
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private final m()V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_11
    return-void
.end method

.method private final n()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->o:Z

    iget-object v1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    const-string v2, "bindingPrimary"

    const/4 v3, 0x0

    if-nez v1, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_e
    iget-object v1, v1, Lio/didomi/sdk/F2;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez v0, :cond_1b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1b
    iget-object v0, v0, Lio/didomi/sdk/F2;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "TVPurposesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lio/didomi/sdk/j7;

    if-eqz v1, :cond_35

    move-object v3, v0

    check-cast v3, Lio/didomi/sdk/j7;

    :cond_35
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Lio/didomi/sdk/j7;->a()V

    :cond_3a
    return-void
.end method

.method private final o()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->o:Z

    iget-object v1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    const-string v2, "bindingPrimary"

    const/4 v3, 0x0

    if-nez v1, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_e
    iget-object v1, v1, Lio/didomi/sdk/F2;->e:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez v1, :cond_1f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1f
    iget-object v1, v1, Lio/didomi/sdk/F2;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "io.didomi.dialog.VENDORS"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lio/didomi/sdk/r8;

    if-eqz v1, :cond_35

    move-object v3, v0

    check-cast v3, Lio/didomi/sdk/r8;

    :cond_35
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Lio/didomi/sdk/r8;->a()V

    :cond_3a
    return-void
.end method

.method private final r()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->g:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final u()V
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    sget v3, Lio/didomi/sdk/R$id;->include_ctv_preferences_menu:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    if-eqz v2, :cond_2b

    invoke-virtual {v3}, Landroid/view/ViewGroup;->clearFocus()V

    invoke-virtual {p0}, Lio/didomi/sdk/n;->g()V

    const/high16 v4, 0x60000

    goto :goto_30

    :cond_2b
    invoke-virtual {p0}, Lio/didomi/sdk/n;->h()V

    const/high16 v4, 0x20000

    :goto_30
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    if-ne v0, v1, :cond_39

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->l()V

    goto :goto_43

    :cond_39
    if-eqz v2, :cond_43

    new-instance v0, Lio/didomi/sdk/preferences/ctv/b;

    invoke-direct {v0, p0}, Lio/didomi/sdk/preferences/ctv/b;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_43
    :goto_43
    return-void
.end method

.method private final v()V
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->q()Lio/didomi/sdk/l7;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/l7;->e2()V

    return-void
.end method

.method private final w()V
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->t()Lio/didomi/sdk/t8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/t8;->T0()V

    return-void
.end method

.method private final x()V
    .registers 5

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->z()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "TVPurposesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    return-void

    :cond_17
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lio/didomi/sdk/R$id;->container_ctv_preferences_primary:I

    new-instance v3, Lio/didomi/sdk/j7;

    invoke-direct {v3}, Lio/didomi/sdk/j7;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final y()V
    .registers 5

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->z()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "io.didomi.dialog.VENDORS"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    return-void

    :cond_17
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lio/didomi/sdk/R$id;->container_ctv_preferences_primary:I

    new-instance v3, Lio/didomi/sdk/r8;

    invoke-direct {v3}, Lio/didomi/sdk/r8;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final z()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez v0, :cond_a

    const-string v0, "bindingPrimary"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v1, v0, Lio/didomi/sdk/F2;->e:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, v0, Lio/didomi/sdk/F2;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public d()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->o:Z

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    const/4 v1, 0x0

    const-string v2, "bindingPrimary"

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_e
    iget-object v0, v0, Lio/didomi/sdk/F2;->f:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez v0, :cond_1f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_20

    :cond_1f
    move-object v1, v0

    :goto_20
    iget-object v0, v1, Lio/didomi/sdk/F2;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public e()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public f()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->o:Z

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    const/4 v1, 0x0

    const-string v2, "bindingPrimary"

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_e
    iget-object v0, v0, Lio/didomi/sdk/F2;->e:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    if-nez v0, :cond_1f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_20

    :cond_1f
    move-object v1, v0

    :goto_20
    iget-object v0, v1, Lio/didomi/sdk/F2;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    sget-object v0, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi$Companion;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->getComponent$android_release()Lio/didomi/sdk/J0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/H0;->a(Landroid/view/LayoutInflater;)Lio/didomi/sdk/H0;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->m:Lio/didomi/sdk/H0;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_28

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_28
    invoke-virtual {p1}, Lio/didomi/sdk/H0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/F2;->a(Landroid/view/View;)Lio/didomi/sdk/F2;

    move-result-object p1

    const-string v2, "bind(binding.root)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p1, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->m:Lio/didomi/sdk/H0;

    if-nez p1, :cond_56

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_56
    invoke-virtual {p1}, Lio/didomi/sdk/H0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->m:Lio/didomi/sdk/H0;

    if-nez p1, :cond_65

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_66

    :cond_65
    move-object v0, p1

    :goto_66
    iget-object p1, v0, Lio/didomi/sdk/H0;->d:Landroid/view/View;

    const-string v0, "binding.viewCtvPreferencesBackground"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/n;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->h:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lio/didomi/sdk/preferences/ctv/f;

    invoke-direct {v0, p0}, Lio/didomi/sdk/preferences/ctv/f;-><init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->q()Lio/didomi/sdk/l7;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->x1()V

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->g1()V

    invoke-virtual {p1}, Lio/didomi/sdk/a5;->V0()V

    invoke-virtual {p1}, Lio/didomi/sdk/l7;->P0()Ljava/util/List;

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->C()V

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->E()V

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->A()V

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->D()V

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->B()V

    invoke-direct {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->r()Z

    move-result p1

    if-eqz p1, :cond_ae

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->d()V

    goto :goto_b1

    :cond_ae
    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->f()V

    :goto_b1
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->n:Lio/didomi/sdk/F2;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const-string v0, "bindingPrimary"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_e
    iget-object v2, v0, Lio/didomi/sdk/F2;->e:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v0, Lio/didomi/sdk/F2;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->s()Lio/didomi/sdk/D8;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/D8;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->o:Z

    return-void
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method public final p()Lio/didomi/sdk/I3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->l:Lio/didomi/sdk/I3;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "navigationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Lio/didomi/sdk/l7;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->i:Lio/didomi/sdk/l7;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "purposesModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final s()Lio/didomi/sdk/D8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->k:Lio/didomi/sdk/D8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "uiProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final t()Lio/didomi/sdk/t8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->j:Lio/didomi/sdk/t8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "vendorsModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

###### Class io.didomi.sdk.preferences.ctv.TVPreferencesDialogActivity.a (io.didomi.sdk.preferences.ctv.TVPreferencesDialogActivity$a)
.class public final Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;-><init>()V
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
        "io/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a",
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
.field final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-virtual {v0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->p()Lio/didomi/sdk/I3;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->b()V

    return-void

    :cond_1b
    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$a;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->a(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    return-void
.end method

###### Class io.didomi.sdk.preferences.ctv.TVPreferencesDialogActivity.b (io.didomi.sdk.preferences.ctv.TVPreferencesDialogActivity$b)
.class final Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "OPEN_SUBSCREEN"

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-lt v0, v3, :cond_25

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_20

    const-class v2, Lio/didomi/sdk/Y5;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/didomi/sdk/Y5;

    :cond_20
    sget-object v0, Lio/didomi/sdk/Y5;->a:Lio/didomi/sdk/Y5;

    if-ne v2, v0, :cond_3d

    goto :goto_3b

    :cond_25
    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_37
    sget-object v0, Lio/didomi/sdk/Y5;->a:Lio/didomi/sdk/Y5;

    if-ne v2, v0, :cond_3d

    :goto_3b
    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.preferences.ctv.a (io.didomi.sdk.preferences.ctv.a)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/a;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/a;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0, p1, p2, p3}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->N(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

###### Class io.didomi.drawable.preferences.ctv.b (io.didomi.sdk.preferences.ctv.b)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/b;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/b;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->O(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    return-void
.end method

###### Class io.didomi.drawable.preferences.ctv.c (io.didomi.sdk.preferences.ctv.c)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final synthetic a:Lio/didomi/sdk/preferences/ctv/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/preferences/ctv/c;

    invoke-direct {v0}, Lio/didomi/sdk/preferences/ctv/c;-><init>()V

    sput-object v0, Lio/didomi/sdk/preferences/ctv/c;->a:Lio/didomi/sdk/preferences/ctv/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->P(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

###### Class io.didomi.drawable.preferences.ctv.d (io.didomi.sdk.preferences.ctv.d)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/d;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/d;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0, p1}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->Q(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.preferences.ctv.e (io.didomi.sdk.preferences.ctv.e)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/e;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/e;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0, p1, p2, p3}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->R(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

###### Class io.didomi.drawable.preferences.ctv.f (io.didomi.sdk.preferences.ctv.f)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/f;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/f;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->S(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    return-void
.end method

###### Class io.didomi.drawable.preferences.ctv.g (io.didomi.sdk.preferences.ctv.g)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/g;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/g;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0, p1, p2}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->T(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;Z)V

    return-void
.end method

###### Class io.didomi.drawable.preferences.ctv.h (io.didomi.sdk.preferences.ctv.h)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final synthetic a:Lio/didomi/sdk/preferences/ctv/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/preferences/ctv/h;

    invoke-direct {v0}, Lio/didomi/sdk/preferences/ctv/h;-><init>()V

    sput-object v0, Lio/didomi/sdk/preferences/ctv/h;->a:Lio/didomi/sdk/preferences/ctv/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->U(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

###### Class io.didomi.drawable.preferences.ctv.i (io.didomi.sdk.preferences.ctv.i)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final synthetic a:Lio/didomi/sdk/preferences/ctv/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/preferences/ctv/i;

    invoke-direct {v0}, Lio/didomi/sdk/preferences/ctv/i;-><init>()V

    sput-object v0, Lio/didomi/sdk/preferences/ctv/i;->a:Lio/didomi/sdk/preferences/ctv/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->V(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

###### Class io.didomi.drawable.preferences.ctv.j (io.didomi.sdk.preferences.ctv.j)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/j;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/j;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0, p1, p2}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->W(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;Z)V

    return-void
.end method

###### Class io.didomi.drawable.preferences.ctv.k (io.didomi.sdk.preferences.ctv.k)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/k;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/k;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0, p1}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->X(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.preferences.ctv.l (io.didomi.sdk.preferences.ctv.l)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/l;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/l;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0, p1}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->Y(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V

    return-void
.end method
