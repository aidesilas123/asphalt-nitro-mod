###### Class com.hyprmx.android.sdk.calendar.c (com.hyprmx.android.sdk.calendar.c)
.class public final Lcom/hyprmx/android/sdk/calendar/c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Short;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/calendar/a;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/calendar/a;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/calendar/c;->a:Lcom/hyprmx/android/sdk/calendar/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    iget-object v0, p0, Lcom/hyprmx/android/sdk/calendar/c;->a:Lcom/hyprmx/android/sdk/calendar/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_38

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid day of the week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    const-string p1, "SA"

    goto :goto_36

    :pswitch_25
    const-string p1, "FR"

    goto :goto_36

    :pswitch_28
    const-string p1, "TH"

    goto :goto_36

    :pswitch_2b
    const-string p1, "WE"

    goto :goto_36

    :pswitch_2e
    const-string p1, "TU"

    goto :goto_36

    :pswitch_31
    const-string p1, "MO"

    goto :goto_36

    :pswitch_34
    const-string p1, "SU"

    :goto_36
    return-object p1

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method
