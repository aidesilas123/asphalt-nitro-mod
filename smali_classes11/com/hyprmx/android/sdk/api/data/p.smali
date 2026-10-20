###### Class com.hyprmx.android.sdk.api.data.p (com.hyprmx.android.sdk.api.data.p)
.class public final synthetic Lcom/hyprmx/android/sdk/api/data/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/String;)I
    .registers 3

    const-string v0, "Name is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const-string v0, "SingleSelectSet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p0, 0x2

    return p0

    :cond_19
    const-string v0, "NaturalNumber"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p0, 0x3

    return p0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No enum constant com.hyprmx.android.sdk.api.data.RequiredInformation.Type."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
