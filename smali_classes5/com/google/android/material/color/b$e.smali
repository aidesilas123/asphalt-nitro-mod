###### Class com.google.android.material.color.b.e (com.google.android.material.color.b$e)
.class Lcom/google/android/material/color/b$e;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:S

.field private final b:S

.field private final c:I


# direct methods
.method constructor <init>(SSI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/google/android/material/color/b$e;->a:S

    iput-short p2, p0, Lcom/google/android/material/color/b$e;->b:S

    iput p3, p0, Lcom/google/android/material/color/b$e;->c:I

    return-void
.end method


# virtual methods
.method a(Ljava/io/ByteArrayOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lcom/google/android/material/color/b$e;->a:S

    invoke-static {v0}, Lcom/google/android/material/color/b;->e(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-short v0, p0, Lcom/google/android/material/color/b$e;->b:S

    invoke-static {v0}, Lcom/google/android/material/color/b;->e(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$e;->c:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method
