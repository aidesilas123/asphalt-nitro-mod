###### Class com.hyprmx.android.sdk.jsAlertDialog.e (com.hyprmx.android.sdk.jsAlertDialog.e)
.class public final Lcom/hyprmx/android/sdk/jsAlertDialog/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/jsAlertDialog/b;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/jsAlertDialog/c;

.field public final b:Lcom/hyprmx/android/sdk/jsAlertDialog/d;

.field public final c:Lcom/hyprmx/android/sdk/jsAlertDialog/a;

.field public final d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/jsAlertDialog/f;Lcom/hyprmx/android/sdk/jsAlertDialog/d;Lcom/hyprmx/android/sdk/jsAlertDialog/a;)V
    .registers 5

    const-string v0, "jsAlertDialogView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewPresenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adDialogPresenter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/e;->a:Lcom/hyprmx/android/sdk/jsAlertDialog/c;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/e;->b:Lcom/hyprmx/android/sdk/jsAlertDialog/d;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/e;->c:Lcom/hyprmx/android/sdk/jsAlertDialog/a;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/e;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/jsAlertDialog/f;->setPresenter(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/e;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/e;->b:Lcom/hyprmx/android/sdk/jsAlertDialog/d;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/jsAlertDialog/d;->a(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/e;->c:Lcom/hyprmx/android/sdk/jsAlertDialog/a;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/jsAlertDialog/a;->e()V

    return-void
.end method

.method public final h()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/jsAlertDialog/e;->c:Lcom/hyprmx/android/sdk/jsAlertDialog/a;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/jsAlertDialog/a;->h()V

    return-void
.end method
