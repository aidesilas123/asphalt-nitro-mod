###### Class com.google.android.datatransport.runtime.firebase.transport.TimeWindow.a (com.google.android.datatransport.runtime.firebase.transport.TimeWindow$a)
.class public final Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$a;
.super Ljava/lang/Object;
.source "TimeWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$a;->a:J

    iput-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$a;->b:J

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;
    .registers 6

    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$a;->a:J

    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$a;->b:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;-><init>(JJ)V

    return-object v0
.end method

.method public b(J)Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$a;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$a;->b:J

    return-object p0
.end method

.method public c(J)Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$a;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$a;->a:J

    return-object p0
.end method
