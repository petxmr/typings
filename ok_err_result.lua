type Ok<T> = { type: "ok", value: T }
type Err<T> = { type: "err", value: T }
type Result<T, E> = Ok<T> | Err<E>

local function divide(a: number, b: number): Result<number, string>
    if b == 0 then
        return { type = "err", value = "Division by zero" }
    end

    return { type = "ok", value = a / b }
end

local res: Result<number, string> = divide(10, 2)

if res.type == "ok" then
    print(`Result: {res.value}`)
else
    print(`Error: {res.value}`)
end
