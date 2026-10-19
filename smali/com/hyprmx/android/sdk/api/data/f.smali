###### Class com.hyprmx.android.sdk.api.data.f (com.hyprmx.android.sdk.api.data.f)
.class public final Lcom/hyprmx/android/sdk/api/data/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/api/data/f$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:S

.field public final c:Ljava/lang/String;

.field public final d:[S

.field public final e:[S

.field public final f:[S

.field public final g:[S


# direct methods
.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[S[S[S[S[S)V
    .registers 10

    const-string v0, "daysInWeek"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "daysInMonth"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "daysInYear"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weeksInMonth"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "monthsInYear"

    invoke-static {p8, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/api/data/f;->a:Ljava/lang/String;

    iput-short p2, p0, Lcom/hyprmx/android/sdk/api/data/f;->b:S

    iput-object p3, p0, Lcom/hyprmx/android/sdk/api/data/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/api/data/f;->d:[S

    iput-object p5, p0, Lcom/hyprmx/android/sdk/api/data/f;->e:[S

    iput-object p6, p0, Lcom/hyprmx/android/sdk/api/data/f;->f:[S

    iput-object p8, p0, Lcom/hyprmx/android/sdk/api/data/f;->g:[S

    return-void
.end method
