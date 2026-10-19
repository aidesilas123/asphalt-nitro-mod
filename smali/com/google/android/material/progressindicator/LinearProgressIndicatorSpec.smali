###### Class com.google.android.material.progressindicator.LinearProgressIndicatorSpec (com.google.android.material.progressindicator.LinearProgressIndicatorSpec)
.class public final Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
.super Lcom/google/android/material/progressindicator/a;
.source "LinearProgressIndicatorSpec.java"


# instance fields
.field public g:I

.field h:Z


# virtual methods
.method c()V
    .registers 3

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->g:I

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/google/android/material/progressindicator/a;->b:I

    if-gtz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/material/progressindicator/a;->c:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_f

    goto :goto_1f

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contiguous indeterminate animation must be used with 3 or more indicator colors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rounded corners are not supported in contiguous indeterminate animation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    return-void
.end method
