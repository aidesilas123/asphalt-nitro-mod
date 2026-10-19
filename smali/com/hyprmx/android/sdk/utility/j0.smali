###### Class com.hyprmx.android.sdk.utility.j0 (com.hyprmx.android.sdk.utility.j0)
.class public abstract Lcom/hyprmx/android/sdk/utility/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/utility/j0$a;,
        Lcom/hyprmx/android/sdk/utility/j0$b;,
        Lcom/hyprmx/android/sdk/utility/j0$c;,
        Lcom/hyprmx/android/sdk/utility/j0$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/j0;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/hyprmx/android/sdk/utility/j0;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.utility.j0.a (com.hyprmx.android.sdk.utility.j0$a)
.class public final Lcom/hyprmx/android/sdk/utility/j0$a;
.super Lcom/hyprmx/android/sdk/utility/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lcom/hyprmx/android/sdk/utility/j0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/utility/j0$a;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/j0$a;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/j0$a;->b:Lcom/hyprmx/android/sdk/utility/j0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "NAVIGATION_ALLOWED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hyprmx/android/sdk/utility/j0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.utility.j0.b (com.hyprmx.android.sdk.utility.j0$b)
.class public final Lcom/hyprmx/android/sdk/utility/j0$b;
.super Lcom/hyprmx/android/sdk/utility/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lcom/hyprmx/android/sdk/utility/j0$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/utility/j0$b;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/j0$b;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/j0$b;->b:Lcom/hyprmx/android/sdk/utility/j0$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "NAVIGATION_BLOCKED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hyprmx/android/sdk/utility/j0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.utility.j0.c (com.hyprmx.android.sdk.utility.j0$c)
.class public final Lcom/hyprmx/android/sdk/utility/j0$c;
.super Lcom/hyprmx/android/sdk/utility/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lcom/hyprmx/android/sdk/utility/j0$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/utility/j0$c;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/j0$c;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/j0$c;->b:Lcom/hyprmx/android/sdk/utility/j0$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "OPEN_OUTSIDE_APPLICATION"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hyprmx/android/sdk/utility/j0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

###### Class com.hyprmx.android.sdk.utility.j0.d (com.hyprmx.android.sdk.utility.j0$d)
.class public final Lcom/hyprmx/android/sdk/utility/j0$d;
.super Lcom/hyprmx/android/sdk/utility/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "NAVIGATION_REDIRECTED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hyprmx/android/sdk/utility/j0;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/j0$d;->b:Ljava/lang/String;

    return-void
.end method
