package com.kidoz.sdk.api.gif.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.SystemClock;
import android.view.View;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public class GifMovieView extends View {
    private Movie mMovie;
    private long mMoviestart;

    public GifMovieView(Context context, InputStream inputStream) {
        super(context);
        this.mMovie = Movie.decodeStream(inputStream);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawColor(0);
        super.onDraw(canvas);
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.mMoviestart == 0) {
            this.mMoviestart = jUptimeMillis;
        }
        this.mMovie.setTime((int) ((jUptimeMillis - this.mMoviestart) % ((long) this.mMovie.duration())));
        this.mMovie.draw(canvas, 10.0f, 10.0f);
        invalidate();
    }
}
