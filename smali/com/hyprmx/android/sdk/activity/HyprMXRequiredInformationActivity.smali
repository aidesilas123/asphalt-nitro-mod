###### Class com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity (com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;
.implements Lcom/hyprmx/android/sdk/core/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;,
        Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$c;,
        Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0003\u0006\u0007\u0008B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;",
        "Lcom/hyprmx/android/sdk/core/v;",
        "<init>",
        "()V",
        "a",
        "b",
        "c",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/widget/ScrollView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/ProgressBar;

.field public f:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;

.field public g:Ljava/util/Calendar;

.field public h:Lcom/hyprmx/android/sdk/footer/FooterFragment;

.field public i:Lcom/hyprmx/android/sdk/api/data/r;

.field public j:Lcom/hyprmx/android/sdk/activity/k0;

.field public k:Landroid/app/DatePickerDialog;

.field public l:F

.field public m:Z

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/hyprmx/android/sdk/api/data/o;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Landroid/widget/EditText;Landroid/widget/DatePicker;III)V
    .registers 9

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$editText"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {p2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->g:Ljava/util/Calendar;

    const-string v1, "calendar"

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1e
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->g:Ljava/util/Calendar;

    if-nez v0, :cond_29

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_29
    invoke-virtual {v0, p3, p4, p5}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->g:Ljava/util/Calendar;

    if-nez v0, :cond_34

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_34
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->f:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;

    const-string p2, "datePickerDate"

    if-nez p1, :cond_49

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_49
    iput p3, p1, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;->a:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->f:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;

    if-nez p1, :cond_53

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_53
    iput p4, p1, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;->b:I

    iget-object p0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->f:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;

    if-nez p0, :cond_5d

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5e

    :cond_5d
    move-object v2, p0

    :goto_5e
    iput p5, v2, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;->c:I

    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Lcom/hyprmx/android/sdk/api/data/o;Landroid/widget/EditText;Landroid/view/View;)V
    .registers 10

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$requirement"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$editText"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/hyprmx/android/sdk/activity/a1;

    invoke-direct {p3, p0, p2}, Lcom/hyprmx/android/sdk/activity/a1;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Landroid/widget/EditText;)V

    const-string p2, "delegate"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;

    invoke-direct {p2, p3}, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;-><init>(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    new-instance p3, Landroid/app/DatePickerDialog;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->f:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;

    const/4 v1, 0x0

    const-string v2, "datePickerDate"

    if-nez v0, :cond_2b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2b
    iget v3, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;->a:I

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->f:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;

    if-nez v0, :cond_35

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_35
    iget v4, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;->b:I

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->f:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;

    if-nez v0, :cond_3f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_40

    :cond_3f
    move-object v1, v0

    :goto_40
    iget v5, v1, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;->c:I

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object p3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->k:Landroid/app/DatePickerDialog;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/api/data/o;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_62

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->k:Landroid/app/DatePickerDialog;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_62
    iget-object p0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->k:Landroid/app/DatePickerDialog;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;->a(Landroid/app/DatePickerDialog;)V

    return-void
.end method

.method public static final a(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Ljava/util/List;Landroid/view/View;)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requiredInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_149

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyprmx/android/sdk/api/data/o;

    instance-of v5, v1, Lcom/hyprmx/android/sdk/api/data/h;

    const-string v6, "formContainer"

    if-eqz v5, :cond_4a

    move-object v7, v1

    check-cast v7, Lcom/hyprmx/android/sdk/api/data/h;

    iget-object v8, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a:Landroid/view/ViewGroup;

    if-nez v8, :cond_3b

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v4

    :cond_3b
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b2

    :cond_4a
    instance-of v7, v1, Lcom/hyprmx/android/sdk/api/data/q;

    if-eqz v7, :cond_86

    move-object v7, v1

    check-cast v7, Lcom/hyprmx/android/sdk/api/data/q;

    iget-object v8, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a:Landroid/view/ViewGroup;

    if-nez v8, :cond_59

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v4

    :cond_59
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_64
    if-ge v9, v8, :cond_b1

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type android.widget.RadioButton"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/widget/RadioButton;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_83

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    goto :goto_b2

    :cond_83
    add-int/lit8 v9, v9, 0x1

    goto :goto_64

    :cond_86
    instance-of v7, v1, Lcom/hyprmx/android/sdk/api/data/k;

    if-eqz v7, :cond_ac

    move-object v7, v1

    check-cast v7, Lcom/hyprmx/android/sdk/api/data/k;

    iget-object v8, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a:Landroid/view/ViewGroup;

    if-nez v8, :cond_95

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v4

    :cond_95
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    sget v8, Lcom/hyprmx/android/R$id;->hyprmx_editText:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b2

    :cond_ac
    const-string v7, "Requirement type not supported"

    invoke-static {v7}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_b1
    move-object v7, v4

    :goto_b2
    if-eqz v7, :cond_bd

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_bb

    goto :goto_bd

    :cond_bb
    const/4 v8, 0x0

    goto :goto_be

    :cond_bd
    :goto_bd
    const/4 v8, 0x1

    :goto_be
    const-string v9, "RequiredInformation not entered: "

    if-eqz v8, :cond_d8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/api/data/o;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->v(Ljava/lang/String;)V

    :goto_d5
    const/4 p1, 0x0

    goto/16 :goto_14a

    :cond_d8
    if-eqz v5, :cond_db

    goto :goto_df

    :cond_db
    instance-of v5, v1, Lcom/hyprmx/android/sdk/api/data/q;

    if-eqz v5, :cond_e8

    :goto_df
    invoke-interface {v1}, Lcom/hyprmx/android/sdk/api/data/o;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_e8
    instance-of v5, v1, Lcom/hyprmx/android/sdk/api/data/k;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a:Landroid/view/ViewGroup;

    if-nez v5, :cond_f4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_f4
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    sget v6, Lcom/hyprmx/android/R$id;->hyprmx_errorView:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    :try_start_102
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object v8, v1

    check-cast v8, Lcom/hyprmx/android/sdk/api/data/k;

    iget v8, v8, Lcom/hyprmx/android/sdk/api/data/k;->c:I

    if-lt v6, v8, :cond_11d

    move-object v8, v1

    check-cast v8, Lcom/hyprmx/android/sdk/api/data/k;

    iget v8, v8, Lcom/hyprmx/android/sdk/api/data/k;->d:I

    if-gt v6, v8, :cond_11d

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/api/data/o;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_11d
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/api/data/o;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_136
    .catch Ljava/lang/NumberFormatException; {:try_start_102 .. :try_end_136} :catch_136

    :catch_136
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->v(Ljava/lang/String;)V

    check-cast v1, Lcom/hyprmx/android/sdk/api/data/k;

    iget-object p1, v1, Lcom/hyprmx/android/sdk/api/data/k;->e:Ljava/lang/String;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d5

    :cond_149
    const/4 p1, 0x1

    :goto_14a
    if-eqz p1, :cond_176

    iget-boolean p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->m:Z

    if-nez p1, :cond_176

    iput-boolean v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->m:Z

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->j:Lcom/hyprmx/android/sdk/activity/k0;

    if-nez p1, :cond_15d

    const-string p1, "requiredInfoController"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    goto :goto_15e

    :cond_15d
    move-object v5, p1

    :goto_15e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "requiredInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/hyprmx/android/sdk/activity/j0;

    invoke-direct {v8, v5, v0, v4}, Lcom/hyprmx/android/sdk/activity/j0;-><init>(Lcom/hyprmx/android/sdk/activity/k0;Ljava/util/Map;Lkotlin/coroutines/d;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1a9

    :cond_176
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p2, p1

    iget-boolean p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->m:Z

    if-eqz p1, :cond_18a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/hyprmx/android/R$string;->hyprmx_MSG_PLEASE_WAIT:I

    goto :goto_190

    :cond_18a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/hyprmx/android/R$string;->hyprmx_MSG_PLEASE_FILL_IN_ALL_FIELDS:I

    :goto_190
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "if (requestSent) {\n     \u2026_IN_ALL_FIELDS)\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x31

    invoke-virtual {p0, p1, v3, p2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1a9
    return-void
.end method


# virtual methods
.method public final G()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hyprmx/android/sdk/api/data/o;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyprmx/android/sdk/api/data/o;

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-interface {v2}, Lcom/hyprmx/android/sdk/api/data/o;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xa

    int-to-float v8, v8

    iget v9, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->l:F

    mul-float v10, v8, v9

    float-to-int v10, v10

    const/4 v11, 0x5

    int-to-float v11, v11

    mul-float v9, v9, v11

    float-to-int v9, v9

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v9, v12, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget v9, Lcom/hyprmx/android/R$id;->hyprmx_submit_button:I

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "findViewById(R.id.hyprmx_submit_button)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->d:Landroid/widget/Button;

    instance-of v9, v2, Lcom/hyprmx/android/sdk/api/data/h;

    const/4 v10, 0x1

    const-string v13, "formContainer"

    if-eqz v9, :cond_9b

    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-interface {v2}, Lcom/hyprmx/android/sdk/api/data/o;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setClickable(Z)V

    new-instance v10, Lcom/hyprmx/android/sdk/activity/b1;

    invoke-direct {v10, v0, v2, v9}, Lcom/hyprmx/android/sdk/activity/b1;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Lcom/hyprmx/android/sdk/api/data/o;Landroid/widget/EditText;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v3, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->l:F

    mul-float v8, v8, v3

    float-to-int v7, v8

    mul-float v11, v11, v3

    float-to-int v3, v11

    invoke-virtual {v2, v7, v3, v7, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v3, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a:Landroid/view/ViewGroup;

    if-nez v3, :cond_8a

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_8a
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a:Landroid/view/ViewGroup;

    if-nez v3, :cond_95

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_96

    :cond_95
    move-object v4, v3

    :goto_96
    invoke-virtual {v4, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_9b
    instance-of v9, v2, Lcom/hyprmx/android/sdk/api/data/q;

    if-eqz v9, :cond_f9

    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    check-cast v2, Lcom/hyprmx/android/sdk/api/data/q;

    iget-object v2, v2, Lcom/hyprmx/android/sdk/api/data/q;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hyprmx/android/sdk/api/data/t;

    new-instance v8, Landroid/widget/RadioButton;

    invoke-direct {v8, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iget-object v9, v7, Lcom/hyprmx/android/sdk/api/data/t;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v7, v7, Lcom/hyprmx/android/sdk/api/data/t;->a:Ljava/lang/String;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, -0x1000000

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/hyprmx/android/R$color;->hyprmx_prequal_radio_button:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_af

    :cond_e0
    iget-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a:Landroid/view/ViewGroup;

    if-nez v2, :cond_e8

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_e8
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a:Landroid/view/ViewGroup;

    if-nez v2, :cond_f3

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_f4

    :cond_f3
    move-object v4, v2

    :goto_f4
    invoke-virtual {v4, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_f9
    instance-of v5, v2, Lcom/hyprmx/android/sdk/api/data/k;

    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v9, Lcom/hyprmx/android/R$layout;->hyprmx_edit_text_with_error:I

    invoke-virtual {v5, v9, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const-string v9, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v9, Lcom/hyprmx/android/R$id;->hyprmx_editText:I

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    sget v14, Lcom/hyprmx/android/R$id;->hyprmx_titleView:I

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    sget v15, Lcom/hyprmx/android/R$id;->hyprmx_errorView:I

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/hyprmx/android/sdk/api/data/o;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v2}, Lcom/hyprmx/android/sdk/api/data/o;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    check-cast v2, Lcom/hyprmx/android/sdk/api/data/k;

    iget-object v4, v2, Lcom/hyprmx/android/sdk/api/data/k;->b:Ljava/lang/String;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const-string v4, "0123456789"

    invoke-static {v4}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v3, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$c;

    iget v7, v2, Lcom/hyprmx/android/sdk/api/data/k;->d:I

    invoke-direct {v3, v7}, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$c;-><init>(I)V

    aput-object v3, v4, v12

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v2, v2, Lcom/hyprmx/android/sdk/api/data/k;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v4, v10

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v7, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->l:F

    mul-float v10, v8, v7

    float-to-int v10, v10

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v2, v10, v7, v10, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    int-to-float v3, v3

    iget v4, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->l:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    mul-float v8, v8, v4

    float-to-int v8, v8

    mul-float v11, v11, v4

    float-to-int v4, v11

    invoke-virtual {v7, v3, v12, v8, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a:Landroid/view/ViewGroup;

    if-nez v2, :cond_1a6

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1a7

    :cond_1a6
    move-object v4, v2

    :goto_1a7
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    :cond_1ac
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const-string v3, "submitButton"

    if-ne v1, v2, :cond_1d0

    iget-object v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->d:Landroid/widget/Button;

    if-nez v1, :cond_1bc

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1bc
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/hyprmx/android/R$color;->hyprmx_submit_red:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1e9

    :cond_1d0
    iget-object v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->d:Landroid/widget/Button;

    if-nez v1, :cond_1d8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1d8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/hyprmx/android/R$color;->hyprmx_submit_red:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1e9
    iget-object v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->d:Landroid/widget/Button;

    if-nez v1, :cond_1f1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1f1
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->d:Landroid/widget/Button;

    if-nez v1, :cond_1fe

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1ff

    :cond_1fe
    move-object v4, v1

    :goto_1ff
    new-instance v1, Lcom/hyprmx/android/sdk/activity/x0;

    move-object/from16 v2, p1

    invoke-direct {v1, v0, v2}, Lcom/hyprmx/android/sdk/activity/x0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Ljava/util/List;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final didTapURL(Ljava/lang/String;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    const-string p1, "Could not launch activity"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_42

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_42
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onBackPressed()V
    .registers 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->o:Z

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->j:Lcom/hyprmx/android/sdk/activity/k0;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v0, "requiredInfoController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_10

    :cond_f
    move-object v2, v0

    :goto_10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/hyprmx/android/sdk/activity/i0;

    invoke-direct {v5, v2, v1}, Lcom/hyprmx/android/sdk/activity/i0;-><init>(Lcom/hyprmx/android/sdk/activity/k0;Lkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 12

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/hyprmx/android/sdk/activity/a;->b:Lcom/hyprmx/android/sdk/activity/g0;

    if-nez v0, :cond_10

    const-string p1, "Cancelling ad. Cannot recreate HyprMXRequiredInformationActivity."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_10
    sget-object v0, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v0, :cond_25

    const-string v1, "listener"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/j;->h:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    sget-object v0, Lcom/hyprmx/android/sdk/activity/a;->b:Lcom/hyprmx/android/sdk/activity/g0;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lcom/hyprmx/android/sdk/activity/g0;->a(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;)Lcom/hyprmx/android/sdk/activity/k0;

    move-result-object v0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->j:Lcom/hyprmx/android/sdk/activity/k0;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->l:F

    const-string v0, "requiredInfoController"

    const/4 v1, 0x0

    if-eqz p1, :cond_63

    const-string p1, "Cancelling ad because activity was destroyed."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->j:Lcom/hyprmx/android/sdk/activity/k0;

    if-nez p1, :cond_4f

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_50

    :cond_4f
    move-object v2, p1

    :goto_50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/hyprmx/android/sdk/activity/i0;

    invoke-direct {v5, v2, v1}, Lcom/hyprmx/android/sdk/activity/i0;-><init>(Lcom/hyprmx/android/sdk/activity/k0;Lkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_63
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->j:Lcom/hyprmx/android/sdk/activity/k0;

    if-nez p1, :cond_6b

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_6b
    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/k0;->c:Lcom/hyprmx/android/sdk/api/data/r;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->i:Lcom/hyprmx/android/sdk/api/data/r;

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->j:Lcom/hyprmx/android/sdk/activity/k0;

    if-nez p1, :cond_77

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_77
    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/k0;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->n:Ljava/util/List;

    sget p1, Lcom/hyprmx/android/R$layout;->hyprmx_prequal_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string v2, "getInstance()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->g:Ljava/util/Calendar;

    new-instance v2, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;

    const-string v3, "calendar"

    if-nez p1, :cond_95

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_95
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v4, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->g:Ljava/util/Calendar;

    if-nez v4, :cond_a2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_a2
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->g:Ljava/util/Calendar;

    if-nez v5, :cond_af

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_af
    const/4 v3, 0x5

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v2, p1, v4, v3}, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;-><init>(III)V

    iput-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->f:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;

    sget p1, Lcom/hyprmx/android/R$id;->hyprmx_scroller:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.hyprmx_scroller)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->b:Landroid/widget/ScrollView;

    sget p1, Lcom/hyprmx/android/R$id;->hyprmx_form_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.hyprmx_form_container)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a:Landroid/view/ViewGroup;

    sget p1, Lcom/hyprmx/android/R$id;->hyprmx_title_textview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.hyprmx_title_textview)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->c:Landroid/widget/TextView;

    sget p1, Lcom/hyprmx/android/R$id;->hyprmx_progress:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.hyprmx_progress)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->e:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->n:Ljava/util/List;

    if-nez p1, :cond_ff

    const-string p1, "requiredInformations"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_ff
    invoke-virtual {p0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v2, Lcom/hyprmx/android/R$id;->hyprmx_footer_fragment:I

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type com.hyprmx.android.sdk.footer.FooterFragment"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/hyprmx/android/sdk/footer/FooterFragment;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->h:Lcom/hyprmx/android/sdk/footer/FooterFragment;

    new-instance v2, Lcom/hyprmx/android/sdk/footer/d;

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->i:Lcom/hyprmx/android/sdk/api/data/r;

    const-string v9, "uiComponents"

    if-nez p1, :cond_122

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_122
    iget-object p1, p1, Lcom/hyprmx/android/sdk/api/data/r;->b:Lcom/hyprmx/android/sdk/api/data/s;

    iget-object v5, p1, Lcom/hyprmx/android/sdk/api/data/s;->c:Lcom/hyprmx/android/sdk/footer/a;

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->h:Lcom/hyprmx/android/sdk/footer/FooterFragment;

    if-nez p1, :cond_131

    const-string p1, "footerFragment"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_132

    :cond_131
    move-object v6, p1

    :goto_132
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->j:Lcom/hyprmx/android/sdk/activity/k0;

    if-nez p1, :cond_13b

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_13b
    iget-object v8, p1, Lcom/hyprmx/android/sdk/activity/k0;->b:Lcom/hyprmx/android/sdk/utility/f0;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/hyprmx/android/sdk/footer/d;-><init>(Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;Lcom/hyprmx/android/sdk/footer/a;Lcom/hyprmx/android/sdk/footer/FooterFragment;ZLcom/hyprmx/android/sdk/utility/f0;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->i:Lcom/hyprmx/android/sdk/api/data/r;

    if-nez p1, :cond_149

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_149
    iget-object p1, p1, Lcom/hyprmx/android/sdk/api/data/r;->b:Lcom/hyprmx/android/sdk/api/data/s;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->c:Landroid/widget/TextView;

    const-string v2, "titleView"

    if-nez v0, :cond_155

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_155
    iget-object v3, p1, Lcom/hyprmx/android/sdk/api/data/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->c:Landroid/widget/TextView;

    if-nez v0, :cond_162

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_162
    iget p1, p1, Lcom/hyprmx/android/sdk/api/data/s;->b:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->d:Landroid/widget/Button;

    const-string v2, "submitButton"

    if-nez v0, :cond_179

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_179
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->d:Landroid/widget/Button;

    if-nez p1, :cond_184

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_184
    const/16 v0, 0xa

    int-to-float v0, v0

    iget v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->l:F

    mul-float v0, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->b:Landroid/widget/ScrollView;

    if-nez p1, :cond_19c

    const-string p1, "scrollView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_19c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->e:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1aa

    const-string p1, "progressView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1ab

    :cond_1aa
    move-object v1, p1

    :goto_1ab
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onDestroy()V
    .registers 9

    :try_start_0
    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->o:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->m:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->j:Lcom/hyprmx/android/sdk/activity/k0;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const-string v0, "requiredInfoController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_15

    :cond_14
    move-object v2, v0

    :goto_15
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/hyprmx/android/sdk/activity/h0;

    invoke-direct {v5, v2, v0, v1}, Lcom/hyprmx/android/sdk/activity/h0;-><init>(Lcom/hyprmx/android/sdk/activity/k0;ZLkotlin/coroutines/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2b

    :catch_26
    const-string v0, "Error cleaning up required info activity."

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onStop()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->k:Landroid/app/DatePickerDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity.a (com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity$a)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;->a:I

    iput p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;->b:I

    iput p3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$a;->c:I

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity.b (com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity$b)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;->a:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/DatePickerDialog;)V
    .registers 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/hyprmx/android/sdk/activity/l0;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/activity/l0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    return-void
.end method

.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$b;->a:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    :cond_c
    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity.c (com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity$c)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$c;->a:I

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 9

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    const-string v1, "source"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dest"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_c
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity$c;->a:I
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_4b} :catch_4f

    if-gt p1, p2, :cond_65

    const/4 p1, 0x0

    return-object p1

    :catch_4f
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "NumberFormatException for EditText field input: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :cond_65
    const-string p1, ""

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.activity.a1 (com.hyprmx.android.sdk.activity.a1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/a1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Landroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/a1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/a1;->b:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .registers 11

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/a1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/a1;->b:Landroid/widget/EditText;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Landroid/widget/EditText;Landroid/widget/DatePicker;III)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.b1 (com.hyprmx.android.sdk.activity.b1)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/b1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

.field public final synthetic b:Lcom/hyprmx/android/sdk/api/data/o;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Lcom/hyprmx/android/sdk/api/data/o;Landroid/widget/EditText;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/b1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/b1;->b:Lcom/hyprmx/android/sdk/api/data/o;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/activity/b1;->c:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/b1;->a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/b1;->b:Lcom/hyprmx/android/sdk/api/data/o;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/b1;->c:Landroid/widget/EditText;

    invoke-static {v0, v1, v2, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Lcom/hyprmx/android/sdk/api/data/o;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.activity.x0 (com.hyprmx.android.sdk.activity.x0)
.class public final synthetic Lcom/hyprmx/android/sdk/activity/x0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/x0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/x0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/x0;->a:Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/x0;->b:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;->a(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
