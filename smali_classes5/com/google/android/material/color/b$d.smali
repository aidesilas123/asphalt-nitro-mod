###### Class com.google.android.material.color.b.d (com.google.android.material.color.b$d)
.class Lcom/google/android/material/color/b$d;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/color/b$d;->a:I

    iput-object p2, p0, Lcom/google/android/material/color/b$d;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/b$d;)I
    .registers 1

    iget p0, p0, Lcom/google/android/material/color/b$d;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/color/b$d;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/color/b$d;->b:Ljava/lang/String;

    return-object p0
.end method
