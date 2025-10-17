const std = @import("std");
const c = @cImport({
    @cInclude("stdio.h");
});
pub fn main() !void {
    // const stdin = std.io.getStdIn().reader();
    // const stdout = std.io.getStdOut().writer();
    // var buffer: [20]u8 = undefined;

    const real_num: i32 = 84;
    var guess: i32 = 0;
    var times: i32 = 1;

    //try stdout.print("Guess a interger between 0 and 100 (100 isn't included): ", .{});
    std.debug.print("Guess a interger between 0 and 100 (100 isn't included): ", .{});
    //guess = try stdin.
    _ = c.scanf("%d", &guess);
    while (guess != real_num) {
        if (guess > real_num) {
            //try stdout.print("Too big! try again: ", .{});
            std.debug.print("Too big! try again: ", .{});
        } else {
            //try stdout.print("Too small! try again: ", .{});
            std.debug.print("Too small! try again: ", .{});
        }
        //guess = try
        _ = c.scanf("%d", &guess);
        times += 1;
    }

    //try stdout.print("You won! You guessed {d} times.\n", .{times});
    std.debug.print("You won! You guessed {d} times.\n", .{times});
}
